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
      identifier = { name = "DistanceTransform"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Anthony Cowley 2012,2013";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Distance transform function.";
      description = "An n-D distance transform that computes the Euclidean\ndistance between each element in a discrete field and the nearest cell\ncontaining a zero.\n\nThe algorithm implemented is based off of\nMeijster et al., /\"A general algorithm for computing distance/\n/transforms in linear time.\"/ Parallel versions of both the Euclidean\ndistance transform and squared Euclidean distance transform are also\nprovided.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."DistanceTransform" or (errorHandler.buildDepError "DistanceTransform"))
            ];
          buildable = true;
          };
        };
      };
    }