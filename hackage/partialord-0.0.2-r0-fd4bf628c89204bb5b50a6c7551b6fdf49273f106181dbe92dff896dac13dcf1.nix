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
      identifier = { name = "partialord"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2023 James Cranch";
      maintainer = "j.d.cranch@sheffield.ac.uk";
      author = "James Cranch";
      homepage = "https://github.com/jcranch/partialord#readme";
      url = "";
      synopsis = "Data structure supporting partial orders";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "partialord-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."partialord" or (errorHandler.buildDepError "partialord"))
            ];
          buildable = true;
          };
        };
      };
    }