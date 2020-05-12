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
      identifier = { name = "astro"; version = "0.4.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Alexander Ignatyev";
      maintainer = "Alexander Ignatyev";
      author = "Alexander Ignatyev";
      homepage = "https://github.com/alexander-ignatyev/astro";
      url = "";
      synopsis = "Amateur astronomical computations";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          ];
        buildable = true;
        };
      tests = {
        "astro-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."astro" or (errorHandler.buildDepError "astro"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }