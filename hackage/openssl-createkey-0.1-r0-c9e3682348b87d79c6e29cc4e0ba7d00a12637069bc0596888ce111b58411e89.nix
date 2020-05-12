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
      specVersion = "0";
      identifier = { name = "openssl-createkey"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Taru Karttunen <taruti@taruti.net>";
      maintainer = "taruti@taruti.net";
      author = "Taru Karttunen";
      homepage = "";
      url = "";
      synopsis = "Create OpenSSL keypairs.";
      description = "Create OpenSSL keypairs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }