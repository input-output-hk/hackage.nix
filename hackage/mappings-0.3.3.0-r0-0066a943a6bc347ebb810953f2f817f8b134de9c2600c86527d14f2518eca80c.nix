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
      identifier = { name = "mappings"; version = "0.3.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2023-25 James Cranch";
      maintainer = "j.d.cranch@sheffield.ac.uk";
      author = "James Cranch";
      homepage = "https://github.com/jcranch/mapping#readme";
      url = "";
      synopsis = "Types which represent functions k -> v";
      description = "A typeclass and a number of implementations; please read README.md on github";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cond" or (errorHandler.buildDepError "cond"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
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
            (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
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
            (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
            (hsPkgs."mappings" or (errorHandler.buildDepError "mappings"))
            (hsPkgs."partialord" or (errorHandler.buildDepError "partialord"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }