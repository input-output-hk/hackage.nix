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
      identifier = { name = "sessiontypes"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "2017 Ferdinand van Walree";
      maintainer = "Ferdinand van Walree";
      author = "Ferdinand van Walree";
      homepage = "https://github.com/Ferdinand-vW/sessiontypes#readme";
      url = "";
      synopsis = "Session types library";
      description = "This packages provides a deep embedded domain-specific language for writing session typed program.\nA session typed program is a program annotated with session types. A session type describes a communication protocol at the type-level.\nThe motivation for doing so is that it gives you a static guarantee that a program correctly implements a protocol.\nIt may even guarantee that no deadlocking can occur.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "test-visualizer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sessiontypes" or (errorHandler.buildDepError "sessiontypes"))
            ];
          buildable = true;
          };
        };
      tests = {
        "sessiontypes-debug" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sessiontypes" or (errorHandler.buildDepError "sessiontypes"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "sessiontypes-normalize" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sessiontypes" or (errorHandler.buildDepError "sessiontypes"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "sessiontypes-interactive" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sessiontypes" or (errorHandler.buildDepError "sessiontypes"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            ];
          buildable = true;
          };
        };
      };
    }