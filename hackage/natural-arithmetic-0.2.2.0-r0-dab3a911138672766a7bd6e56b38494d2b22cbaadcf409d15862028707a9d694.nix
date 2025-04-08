{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "natural-arithmetic"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/natural-arithmetic";
      url = "";
      synopsis = "Arithmetic of natural numbers";
      description = "A search for terms like `arithmetic` and `natural` on hackage reveals\nno shortage of libraries for handling the arithmetic of natural\nnumbers. How is this library any different some of the others? It has\na particular purpose: providing a foundation on top on which other\nlibraries may define types indexed by sizes. This uses GHC's\nnon-inductively-defined `GHC.TypeNats.Nat`. As a rule, this does not\nuse `unsafeCoerce` internally anywhere.\n\nPerhaps the most direct competitor to `natural-arithmetic` is a\ntypechecker plugin like\n<https://github.com/yav/type-nat-solver type-nat-solver>. The big\ndifference is that `type-nat-solver` can really only be used in\napplication code, not in library code. This is because libraries\nshould not require the presence of typechecker plugins. Technically,\nthey can (you could document it), but many developers will not\nuse libraries that have unusual install procedures like this.\n\nThis library, in places, requires users to use the 'TypeApplications`\nlanguage extension. This is done when a number is only need at\nthe type level (without a runtime witness).\n\nThis library uses a non-minimal core, providing redundant primitives\nin `Arithmetic.Lt` and `Arithmetic.Lte`. This is done in the interest\nof making it easy for user to assemble proofs. Recall that proof\nassembly is done by hand rather than by an SMT solver, so removing\nsome tediousness from this is helpful to users.\n\nThis library provides left and variants variants of several functions.\nFor example, `Arithmetic.Lte` provides both `substituteL` and\n`substituteR`. This is only done when there are two variants of\na function. For substitution, this is the case because we have\n`b = c, a ≤ b ==> a ≤ c` and `a = c, a ≤ b ==> c ≤ b`. So, we\nprovide both `substituteL` and `substituteR`. However,\nfor addition of inequalities, we have four possible variants:\n`a ≤ b, c ≤ d ==> a + c ≤ b + d`, `a ≤ b, c ≤ d ==> c + a ≤ b + d`,\n`a ≤ b, c ≤ d ==> a + c ≤ d + b`, `a ≤ b, c ≤ d ==> c + a ≤ d + b`.\nConsequently, we only provide a single `plus` function, and users\nmust use `Arithmetic.Plus.commutative` to further manipulate the\ninequality.\n\nHere are the proof-manipulation vocabulary used by this library.\nMany of these terms are not standard, but we try to be consistent\nin this library:\n\n* Weaken: Increase an upper bound without changing the bounded value\n\n* Increment: Increase an upper bound along with the bounded value\n\n* Decrement: Decrease an upper bound along with the bounded value\n\n* Substitute: Replace a number with an equal number";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unlifted" or (errorHandler.buildDepError "unlifted"))
        ];
        buildable = true;
      };
    };
  }