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
      identifier = { name = "servant-reason"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrei Barbu";
      maintainer = "andrei@0xab.com";
      author = "Andrei Barbu";
      homepage = "https://github.com/abarbu/servant-reason#readme";
      url = "";
      synopsis = "Derive Reason types to interact with a Haskell backend";
      description = "Please see the README on GitHub at <https://github.com/abarbu/servant-reason#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."reason-export" or (errorHandler.buildDepError "reason-export"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-foreign" or (errorHandler.buildDepError "servant-foreign"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      tests = {
        "servant-reason-compile-test" = {
          depends = [
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."interpolate" or (errorHandler.buildDepError "interpolate"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mockery" or (errorHandler.buildDepError "mockery"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."reason-export" or (errorHandler.buildDepError "reason-export"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-foreign" or (errorHandler.buildDepError "servant-foreign"))
            (hsPkgs."servant-reason" or (errorHandler.buildDepError "servant-reason"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        "servant-reason-test" = {
          depends = [
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."interpolate" or (errorHandler.buildDepError "interpolate"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mockery" or (errorHandler.buildDepError "mockery"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."reason-export" or (errorHandler.buildDepError "reason-export"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-foreign" or (errorHandler.buildDepError "servant-foreign"))
            (hsPkgs."servant-reason" or (errorHandler.buildDepError "servant-reason"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        };
      };
    }