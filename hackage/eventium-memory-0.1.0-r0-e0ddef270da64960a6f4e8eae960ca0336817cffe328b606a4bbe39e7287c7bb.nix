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
      identifier = { name = "eventium-memory"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Alexander Sidorenko";
      author = "";
      homepage = "https://github.com/aleks-sidorenko/eventium#readme";
      url = "";
      synopsis = "In-memory implementations for eventium";
      description = "Eventium-memory provides in-memory implementations of event stores, read models, and projection caches\nfor the Eventium event sourcing framework. This package is ideal for development, testing, and prototyping\nevent-sourced applications without requiring external dependencies like databases. All data is stored in\nSTM-based concurrent data structures for thread-safe access.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."eventium-core" or (errorHandler.buildDepError "eventium-core"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."eventium-core" or (errorHandler.buildDepError "eventium-core"))
            (hsPkgs."eventium-test-helpers" or (errorHandler.buildDepError "eventium-test-helpers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }