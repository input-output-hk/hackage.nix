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
      specVersion = "3.0";
      identifier = { name = "biscuit-wai"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Clément Delafargue";
      maintainer = "clement@delafargue.name";
      author = "Clément Delafargue";
      homepage = "https://github.com/biscuit-auth/biscuit-haskell#readme";
      url = "";
      synopsis = "WAI middleware for the Biscuit security token";
      description = "Please see the README on GitHub at <https://github.com/biscuit-auth/biscuit-haskell#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."biscuit-haskell" or (errorHandler.buildDepError "biscuit-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
      tests = {
        "biscuit-wai-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."biscuit-haskell" or (errorHandler.buildDepError "biscuit-haskell"))
            (hsPkgs."biscuit-wai" or (errorHandler.buildDepError "biscuit-wai"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = true;
        };
      };
    };
  }