---
title: Scientific Writing
--- 

## Modeling Call-Time Choice as Effect using Scoped Free Monads (Master's thesis, 2019)

<button class="collapsible">Abstract</button>
<div class="collapsible-content">
[Curry](https://www-ps.informatik.uni-kiel.de/currywiki/) is a functional logic programming language that features non-strict non-determinism based on Haskell-like syntax.
These properties make Curry an interesting object of software verification.

The approach of formalizing Haskell programs in a proof assistant like Coq, as described by [Dylus et al.](https://arxiv.org/pdf/1805.08059.pdf), cannot be applied directly to Curry due to the interaction of non-determinism with sharing.
These so-called call-time choice semantics therefore necessitate explicit modeling of sharing as effect.

In this thesis, Curry's call-time choice semantics are modeled using a combination of the free monad and effect handlers as presented by [Wu et al.](https://people.cs.kuleuven.be/~tom.schrijvers/Research/papers/lics2018.pdf).
We explore different aspects of explicit sharing and multiple approaches for modeling scoped effects.
Finally, we prove some properties -- similar to the laws of sharing introduced by [Fischer et al.](http://www-ps.informatik.uni-kiel.de/~sebf/data/pub/icfp09.pdf) -- of the model in Coq.
</div>

<button class="collapsible">BibTeX</button>
<div class="collapsible-content">
```
@MastersThesis{bunkenburg2019modeling,
  author  = {Niels Bunkenburg},
  title   = {Modeling Call-Time Choice as Effect using Scoped Free Monads},
  school  = {Kiel University},
  address = {Germany},
  year    = {2019},
}
```
</div>

<button class="collapsible" onclick='window.location.href = "/papers/ModelingCallTimeChoiceAsEffect.pdf"'>pdf</button></a>

---

## Formalizing inference systems in Coq by means of type systems for Curry (Bachelor's thesis, 2016) 

<button class="collapsible">Abstract</button>
<div class="collapsible-content">
In a nutshell, Curry is a functional logic programming language based on Haskell. This means that -- in addition
to Haskell's functional language aspects -- Curry inherits non-determinism and free variables from logic languages
like Prolog.

Curry's static type system can be represented by means of inference systems. In my thesis, I have explored two different
representations of Curry programs and how the corrsponding type systems can be formalized in Coq.
</div>

<button class="collapsible">BibTeX</button>
<div class="collapsible-content">
```
@MastersThesis{bunkenburg2019modeling,
  author  = {Niels Bunkenburg},
  title   = {Formalizing inference systems in Coq by means of type systems for Curry},
  school  = {Kiel University},
  address = {Germany},
  year    = {2016},
}
```
</div>

<button class="collapsible" onclick='window.location.href = "/papers/FormalizingInferenceSystemsInCoq.pdf"'>pdf</button></a>

<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script>
