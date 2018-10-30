{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cflp";
        version = "2009.1.26";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sebf@informatik.uni-kiel.de";
      author = "Sebastian Fischer";
      homepage = "http://www-ps.informatik.uni-kiel.de/~sebf/projects/cflp.html";
      url = "";
      synopsis = "Constraint Functional-Logic Programming in Haskell";
      description = "This package provides combinators for constraint\nfunctional-logic programming ((C)FLP) in Haskell. The\ncombinators might later be used as a target language for\ncompiling programs written in an FLP language like Curry\nor Toy. Another application of FLP is demand driven\ntest-case generation.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.syb)
          (hsPkgs.containers)
          (hsPkgs.control-monad-omega)
          (hsPkgs.logict)
          (hsPkgs.random)
          (hsPkgs.MonadRandom)
          (hsPkgs.value-supply)
          (hsPkgs.HUnit)
        ];
      };
    };
  }