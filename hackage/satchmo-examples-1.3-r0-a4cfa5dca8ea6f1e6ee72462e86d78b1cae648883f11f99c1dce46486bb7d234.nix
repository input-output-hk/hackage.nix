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
      specVersion = "1.2";
      identifier = { name = "satchmo-examples"; version = "1.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Johannes Waldmann";
      homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/";
      url = "";
      synopsis = "examples that show how to use satchmo";
      description = "examples that show how to use satchmo";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Factor" = {
          depends = [
            (hsPkgs."satchmo" or (errorHandler.buildDepError "satchmo"))
            (hsPkgs."satchmo-minisat" or (errorHandler.buildDepError "satchmo-minisat"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = true;
        };
        "HC" = {
          depends = [
            (hsPkgs."satchmo" or (errorHandler.buildDepError "satchmo"))
            (hsPkgs."satchmo-minisat" or (errorHandler.buildDepError "satchmo-minisat"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = true;
        };
        "VC" = {
          depends = [
            (hsPkgs."satchmo" or (errorHandler.buildDepError "satchmo"))
            (hsPkgs."satchmo-funsat" or (errorHandler.buildDepError "satchmo-funsat"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = true;
        };
      };
    };
  }