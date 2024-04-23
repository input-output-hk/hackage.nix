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
      identifier = { name = "clif"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "(c) 2016-2018 Matti Eskelinen";
      maintainer = "matti.a.eskelinen@gmail.com";
      author = "Matti Eskelinen";
      homepage = "";
      url = "";
      synopsis = "A Clifford algebra number type for Haskell";
      description = "Clif is a library for symbolic and numeric computations on Clifford algebras using Haskell. It is general enough to handle finite and infinite-dimensional Clifford algebras arising from arbitrary bilinear forms, within limitations of computability. To get started, read \"Clif.Tutorial\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs."clif" or (errorHandler.buildDepError "clif"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-clifProduct" = {
          depends = [
            (hsPkgs."clif" or (errorHandler.buildDepError "clif"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }