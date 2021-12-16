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
      identifier = { name = "network-protocol-xmpp"; version = "0.4.10"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "John Millikin <jmillikin@gmail.com>, Stephan Maka <stephan@spaceboyz.net>";
      homepage = "https://git.sr.ht/~singpolyma/network-protocol-xmpp";
      url = "";
      synopsis = "Client library for the XMPP protocol.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."gnuidn" or (errorHandler.buildDepError "gnuidn"))
          (hsPkgs."gnutls" or (errorHandler.buildDepError "gnutls"))
          (hsPkgs."gsasl" or (errorHandler.buildDepError "gsasl"))
          (hsPkgs."libxml-sax" or (errorHandler.buildDepError "libxml-sax"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          ];
        buildable = true;
        };
      };
    }