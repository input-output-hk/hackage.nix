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
      identifier = { name = "ehlo"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Jan Hamal Dvořák";
      maintainer = "mordae@anilinux.org";
      author = "Jan Hamal Dvořák";
      homepage = "https://github.com/mordae/ehlo#readme";
      url = "";
      synopsis = "Minimalistic SMTP client for Haskell";
      description = "Minimalistic SMTP client that connects to the remote server,\nestablishes secure communication, authenticates and transmits\na MIME-encoded email message to specified recipients.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hookup" or (errorHandler.buildDepError "hookup"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }