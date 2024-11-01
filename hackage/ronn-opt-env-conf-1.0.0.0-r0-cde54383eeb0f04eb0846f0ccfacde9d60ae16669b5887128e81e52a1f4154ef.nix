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
      specVersion = "1.18";
      identifier = { name = "ronn-opt-env-conf"; version = "1.0.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Pat Brisbin";
      author = "";
      homepage = "https://github.com/pbrisbin/ronn#readme";
      url = "";
      synopsis = "Produce Ronn from OptEnvConf";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."opt-env-conf" or (errorHandler.buildDepError "opt-env-conf"))
          (hsPkgs."ronn" or (errorHandler.buildDepError "ronn"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
            (hsPkgs."opt-env-conf" or (errorHandler.buildDepError "opt-env-conf"))
            (hsPkgs."ronn" or (errorHandler.buildDepError "ronn"))
            (hsPkgs."ronn-opt-env-conf" or (errorHandler.buildDepError "ronn-opt-env-conf"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }