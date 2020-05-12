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
      identifier = { name = "pontarius-xmpp"; version = "0.1.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Dmitry Astapov, Pierre Kovalev, Mahdi Abdinejadi, Jon Kristensen,\nIETF Trust, Philipp Balzarek";
      maintainer = "info@jonkri.com";
      author = "Jon Kristensen, Mahdi Abdinejadi, Philipp Balzarek";
      homepage = "http://www.pontarius.org/";
      url = "http://hackage.haskell.org/packages/archive/pontarius-xmpp/0.1.0.0/pontarius-xmpp-0.1.0.0.tar.gz";
      synopsis = "An incomplete implementation of RFC 6120 (XMPP: Core)";
      description = "Pontarius is a work in progress implementation of\nRFC 6120 (XMPP: Core).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."tls-extra" or (errorHandler.buildDepError "tls-extra"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-picklers" or (errorHandler.buildDepError "xml-picklers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."stringprep" or (errorHandler.buildDepError "stringprep"))
          ];
        buildable = true;
        };
      exes = { "pontarius-xmpp-echoclient" = { buildable = true; }; };
      };
    }