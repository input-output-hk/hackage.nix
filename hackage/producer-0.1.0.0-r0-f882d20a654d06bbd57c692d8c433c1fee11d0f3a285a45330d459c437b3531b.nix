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
      identifier = { name = "producer"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Eric Torreborre";
      maintainer = "etorreborre@yahoo.com";
      author = "Eric Torreborre";
      homepage = "https://github.com/etorreborre/producer-hs#readme";
      url = "";
      synopsis = "Simple streaming datatype";
      description = "Producer is a simple streaming datatype, making that only a limited number\nof elements are ever kept in memory. As such it is more a library showing the use of\nsimple functional programming to do streaming rather than a production library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "producer-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."producer" or (errorHandler.buildDepError "producer"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-auto" or (errorHandler.buildDepError "tasty-auto"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
          ];
          buildable = true;
        };
      };
    };
  }