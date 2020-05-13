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
      specVersion = "1.6";
      identifier = { name = "HaskellNet"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006 Jun Mukai";
      maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
      author = "Jun Mukai";
      homepage = "https://github.com/jtdaugherty/HaskellNet";
      url = "";
      synopsis = "Client support for POP3, SMTP, and IMAP";
      description = "This package provides client support for the POP3,\nSMTP, and IMAP protocols.  NOTE: this package will be\nsplit into smaller, protocol-specific packages in the\nfuture.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."base64-string" or (errorHandler.buildDepError "base64-string"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }