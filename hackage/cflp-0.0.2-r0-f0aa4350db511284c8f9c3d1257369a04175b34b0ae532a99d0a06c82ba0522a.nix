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
      specVersion = "1.2";
      identifier = { name = "cflp"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sebf@informatik.uni-kiel.de";
      author = "Sebastian Fischer";
      homepage = "http://www-ps.informatik.uni-kiel.de/~sebf/projects/cflp.html";
      url = "";
      synopsis = "Constraint Functional-Logic Programming in Haskell";
      description = "This package provides combinators for constraint\nfunctional-logic programming ((C)FLP) in Haskell. The\ncombinators can be used as a target language for compiling\nprograms written in an FLP language like Curry or Toy. Another\napplication of FLP is demand driven test-case generation.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
        ];
        buildable = true;
      };
    };
  }