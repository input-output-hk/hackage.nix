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
      specVersion = "1.20";
      identifier = { name = "chorale-geo"; version = "0.1.1"; };
      license = "MIT";
      copyright = "2014-2016 Franz-Benjamin Mocnik";
      maintainer = "Franz-Benjamin Mocnik <mail@mocnik-science.net>";
      author = "Franz-Benjamin Mocnik <mail@mocnik-science.net>";
      homepage = "https://github.com/mocnik-science/chorale-geo";
      url = "";
      synopsis = "A module containing basic geo functions";
      description = "Chorale-Geo is a Haskell module that contains basic functions for geo\napplications";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."chorale" or (errorHandler.buildDepError "chorale"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."chorale" or (errorHandler.buildDepError "chorale"))
            (hsPkgs."chorale-geo" or (errorHandler.buildDepError "chorale-geo"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }