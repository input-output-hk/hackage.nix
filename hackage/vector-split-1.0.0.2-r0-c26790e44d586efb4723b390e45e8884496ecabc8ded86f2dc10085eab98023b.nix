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
      specVersion = "1.10";
      identifier = { name = "vector-split"; version = "1.0.0.2"; };
      license = "MIT";
      copyright = "(c) Florian Hofmann 2016";
      maintainer = "fho@f12n.de";
      author = "Florian Hofmann";
      homepage = "https://github.com/fhaust/vector-split";
      url = "";
      synopsis = "Combinator library for splitting vectors.";
      description = "This package aims to be a vector-based drop-in replacement\nfor the list-based split package.\nFor more information see the haddocs or checkout the source\non github.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "vector-split-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-split" or (errorHandler.buildDepError "vector-split"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }