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
      identifier = { name = "reflex-process"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "reflex-frp interface for running shell commands";
      description = "Run shell commands from within reflex applications and interact with them over a functional-reactive interface";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-process" or (errorHandler.buildDepError "reflex-process"))
            (hsPkgs."reflex-vty" or (errorHandler.buildDepError "reflex-vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = true;
          };
        };
      };
    }