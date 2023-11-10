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
      identifier = { name = "mappings"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 James Cranch";
      maintainer = "j.d.cranch@sheffield.ac.uk";
      author = "James Cranch";
      homepage = "https://github.com/jcranch/mapping#readme";
      url = "";
      synopsis = "Types which represent functions k -> v";
      description = "Please read README.md on github";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cond" or (errorHandler.buildDepError "cond"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."partialord" or (errorHandler.buildDepError "partialord"))
          ];
        buildable = true;
        };
      exes = {
        "view" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cond" or (errorHandler.buildDepError "cond"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."mappings" or (errorHandler.buildDepError "mappings"))
            (hsPkgs."partialord" or (errorHandler.buildDepError "partialord"))
            ];
          buildable = true;
          };
        };
      tests = {
        "mapping" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cond" or (errorHandler.buildDepError "cond"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mappings" or (errorHandler.buildDepError "mappings"))
            (hsPkgs."partialord" or (errorHandler.buildDepError "partialord"))
            ];
          buildable = true;
          };
        };
      };
    }