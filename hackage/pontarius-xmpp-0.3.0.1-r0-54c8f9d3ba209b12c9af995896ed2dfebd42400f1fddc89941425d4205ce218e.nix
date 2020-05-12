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
    flags = { with-th = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "pontarius-xmpp"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Dmitry Astapov, Pierre Kovalev, Mahdi Abdinejadi, Jon Kristensen,\nIETF Trust, Philipp Balzarek";
      maintainer = "info@jonkri.com";
      author = "Jon Kristensen, Philipp Balzarek";
      homepage = "https://github.com/pontarius/pontarius-xmpp/";
      url = "http://www.jonkri.com/releases/pontarius-xmpp-0.3.0.1.tar.gz";
      synopsis = "An XMPP client library";
      description = "Pontarius XMPP is a work in progress implementation of RFC 6120\n(\"XMPP CORE\"), RFC 6121 (\"XMPP IM\"), and RFC 6122 (\"XMPP ADDR\").\nWhile in alpha, Pontarius XMPP works quite well and fulfills most\nrequirements of the RFCs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."cryptohash-cryptoapi" or (errorHandler.buildDepError "cryptohash-cryptoapi"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stringprep" or (errorHandler.buildDepError "stringprep"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."tls-extra" or (errorHandler.buildDepError "tls-extra"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-picklers" or (errorHandler.buildDepError "xml-picklers"))
          ] ++ [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ]) ++ (pkgs.lib).optional (flags.with-th && (compiler.isGhc && (compiler.version).ge "7.6.1")) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"));
        buildable = true;
        };
      };
    }