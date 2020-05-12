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
      identifier = { name = "cfenv"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018, Tom Oram";
      maintainer = "tom@x2k.com";
      author = "Tom Oram";
      homepage = "https://github.com/tomphp/haskell-cfenv#readme";
      url = "";
      synopsis = "A library getting the environment when running on Cloud Foundry";
      description = "This is a port of go-cfenv for Golang. The purpose of this library is to assist you in writing Haskell apps that run on Cloud Foundry. It provides convenience functions and structures that map to Cloud Foundry environment variable primitives.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "cfenv-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cfenv" or (errorHandler.buildDepError "cfenv"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            ];
          buildable = true;
          };
        };
      };
    }