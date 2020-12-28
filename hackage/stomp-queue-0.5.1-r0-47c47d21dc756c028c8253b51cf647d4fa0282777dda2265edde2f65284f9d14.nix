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
      specVersion = "1.24";
      identifier = { name = "stomp-queue"; version = "0.5.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) Tobias Schoofs, 2011 - 2020";
      maintainer = "tobias dot schoofs at gmx dot net";
      author = "Tobias Schoofs";
      homepage = "http://github.com/toschoo/mom";
      url = "";
      synopsis = "Stompl Client Library ";
      description = "The Stomp Protocol specifies message-oriented interoperability.\nApplications connect to a message broker to send (publish)\nor receive (subscribe) messages through queues.\nInteroperating applications do not know\nthe location or internal structure of each other.\nThey see only each other's interfaces, /i.e./ the messages\npublished and subscribed through the broker.\n\nThe Stomp Queue library provides\na Stomp client, using abstractions like\n'Connection', 'Transaction', 'Queue' and 'Message'.\nThe library may use TLS for secure connections\nto brokers that provide security over TLS.\n\nMore information, examples and a test suite are available\non <http://github.com/toschoo/mom>.\nThe Stomp specification can be found at\n<http://stomp.github.com>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stompl" or (errorHandler.buildDepError "stompl"))
          (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."network-conduit-tls" or (errorHandler.buildDepError "network-conduit-tls"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
        buildable = true;
        };
      };
    }