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
      specVersion = "1.12";
      identifier = { name = "math-programming-tests"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Patrick Steele";
      maintainer = "steele.pat@gmail.com";
      author = "Patrick Steele";
      homepage = "https://github.com/prsteele/math-programming-tests#readme";
      url = "";
      synopsis = "Utility functions for testing implementations of the math-programming library.";
      description = "Please see the README on GitHub at <https://github.com/prsteele/math-programming-api-tests#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."math-programming" or (errorHandler.buildDepError "math-programming"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }