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
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "funflow-nix"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matthewtpickering@gmail.com";
      author = "Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "Utility functions for using funflow with nix";
      description = "This library provides functions to create flows which run commands\nin environments created by nix commands.\nIt is designed to be like the docker integration but the environments\nare created by nix rather than in a container.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."funflow" or (errorHandler.buildDepError "funflow"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."funflow" or (errorHandler.buildDepError "funflow"))
            (hsPkgs."funflow-nix" or (errorHandler.buildDepError "funflow-nix"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."funflow" or (errorHandler.buildDepError "funflow"))
            (hsPkgs."funflow-nix" or (errorHandler.buildDepError "funflow-nix"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
            ];
          buildable = true;
          };
        };
      };
    }