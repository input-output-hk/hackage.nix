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
      identifier = { name = "google-oauth2-jwt"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 - Michel Boucey";
      maintainer = "michel.boucey@cybervisible.fr";
      author = "Michel Boucey";
      homepage = "https://github.com/MichelBoucey/google-oauth2-jwt";
      url = "";
      synopsis = "Get a signed JWT for Google Service Accounts";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."RSA" or (errorHandler.buildDepError "RSA"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix-time" or (errorHandler.buildDepError "unix-time"))
          ];
        buildable = true;
        };
      };
    }