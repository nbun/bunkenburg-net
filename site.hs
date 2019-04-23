{-# LANGUAGE OverloadedStrings #-}
import           Control.Applicative
import           Data.Char           (toUpper)
import           Data.Monoid         (mappend)
import           Hakyll

main :: IO ()
main = hakyll $ do
    match ("images/*" .||. "photos/**" .||. "fonts/**") $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match "index.md" $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/defaultNoHeading.html" siteCtx
            >>= relativizeUrls

    match (fromList ["contact.md", "about.md", "papers.md"]) $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/default.html" siteCtx
            >>= relativizeUrls

    match ("photography/*" .||. "projects/*") $ do
        route $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/post.html"    postCtx
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls

    let overview s = do
          route idRoute
          compile $ do
            posts <- recentFirst =<< loadAll (fromGlob $ s ++ "/*")
            let archiveCtx =
                  listField "posts" postCtx (return posts) `mappend`
                  constField "title" (capitalize s)        `mappend`
                  siteCtx

            makeItem ""
              >>= loadAndApplyTemplate (fromFilePath $ "templates/" ++ s ++ ".html") archiveCtx
              >>= loadAndApplyTemplate "templates/default.html" archiveCtx
              >>= relativizeUrls

    create ["projects.html"] $ overview "projects"
    create ["photography.html"] $ overview "photography"

    match "templates/*" $ compile templateCompiler

capitalize :: String -> String
capitalize []    = []
capitalize (c:s) = toUpper c : s

postCtx :: Context String
postCtx =
    dateField "date" "%B %e, %Y" `mappend`
    siteCtx

siteCtx :: Context String
siteCtx =
    activeClassField `mappend`
    defaultContext

-- https://groups.google.com/forum/#!searchin/hakyll/if$20class/hakyll/WGDYRa3Xg-w/nMJZ4KT8OZUJ
activeClassField :: Context a
activeClassField = functionField "activeClass" $ \[p] _ -> do
    path <- toFilePath <$> getUnderlying
    return $ if path == p then "active" else path
