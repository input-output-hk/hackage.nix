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
      identifier = { name = "extralife"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Tina Wuest";
      maintainer = "tina@wuest.me";
      author = "Tina Wuest";
      homepage = "https://github.com/wuest/haskell-extralife-api";
      url = "";
      synopsis = "API Client for ExtraLife team and user data";
      description = "Provides types and helper functions for fetching data from ExtraLife about donation drives (participants, teams, donations)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }