---
title: Scientific Writing
--- 

## Modeling Call-Time Choice as Effect using Scoped Free Monads (Master's thesis, 2019)

[Curry](https://www-ps.informatik.uni-kiel.de/currywiki/) is a functional logic programming language that features non-strict non-determinism based on Haskell-like syntax.
These properties make Curry an interesting object of software verification.

The approach of formalizing Haskell programs in a proof assistant like Coq, as described by [Dylus et al.](https://arxiv.org/pdf/1805.08059.pdf), cannot be applied directly to Curry due to the interaction of non-determinism with sharing.
These so-called call-time choice semantics therefore necessitate explicit modeling of sharing as effect.

In this thesis, Curry's call-time choice semantics are modeled using a combination of the free monad and effect handlers as presented by [Wu et al.](https://people.cs.kuleuven.be/~tom.schrijvers/Research/papers/lics2018.pdf).
We explore different aspects of explicit sharing and multiple approaches for modeling scoped effects.
Finally, we prove some properties -- similar to the laws of sharing introduced by [Fischer et al.](http://www-ps.informatik.uni-kiel.de/~sebf/data/pub/icfp09.pdf) -- of the model in Coq.

---

## Formalizing inference systems in Coq by means of type systems for Curry (Bachelor's thesis, 2016) [.pdf](https://www.informatik.uni-kiel.de/~mh/lehre/abschlussarbeiten/bsc/Bunkenburg.pdf)

In a nutshell, Curry is a functional logic programming language based on Haskell. This means that -- in addition
to Haskell's functional language aspects -- Curry inherits non-determinism and free variables from logic languages
like Prolog.

Curry's static type system can be represented by means of inference systems. In my thesis, I have explored two different
representations of Curry programs and how the corrsponding type systems can be formalized in Coq.
