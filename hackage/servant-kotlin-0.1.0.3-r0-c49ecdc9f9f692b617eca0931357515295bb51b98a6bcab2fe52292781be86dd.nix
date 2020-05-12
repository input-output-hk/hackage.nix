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
      identifier = { name = "servant-kotlin"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "2017-2018 MATSUBARA Nobutada";
      maintainer = "MATSUBARA Nobutada";
      author = "MATSUBARA Nobutada";
      homepage = "https://github.com/matsubara0507/servant-kotlin#readme";
      url = "";
      synopsis = "Automatically derive Kotlin class to query servant webservices";
      description = "See README at <https://github.com/matsubara0507/servant-kotlin#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-foreign" or (errorHandler.buildDepError "servant-foreign"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-foreign" or (errorHandler.buildDepError "servant-foreign"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "generate-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-foreign" or (errorHandler.buildDepError "servant-foreign"))
            (hsPkgs."servant-kotlin" or (errorHandler.buildDepError "servant-kotlin"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        };
      };
    }