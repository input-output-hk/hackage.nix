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
      specVersion = "1.8";
      identifier = { name = "stomp-conduit"; version = "0.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) Tobias Schoofs, 2013 - 2015";
      maintainer = "tobias dot schoofs at gmx dot net";
      author = "Tobias Schoofs";
      homepage = "http://github.com/toschoo/mom";
      url = "";
      synopsis = "Stompl Conduit Client";
      description = "The Stomp Protocol specifies message-oriented interoperability.\nApplications connect to a message broker to send (publish)\nor receive (subscribe) messages through queues.\nInteroperating applications do not know\nthe location or internal structure of each other.\nThey see only each other's interfaces, /i.e./ the messages\npublished and subscribed through a broker.\n\nThe Stomp Queue library provides\na Stomp client, using abstractions like 'Reader' and 'Writer' Queues.\nThe Stomp Conduit library provides an abstraction level\non top of queues, where not single messages are in the focus\nof the API, but streams of messages,\neither infinite streams or\nmultipart messages with an explicit last message segment.\nThe latter concept is\nan extension of the Stomp specification.\n\nMore information, examples and a test suite are available\non <http://github.com/toschoo/mom>.\nThe Stomp specification can be found at\n<http://stomp.github.com>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stomp-queue" or (errorHandler.buildDepError "stomp-queue"))
          (hsPkgs."stompl" or (errorHandler.buildDepError "stompl"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
        ];
        buildable = true;
      };
    };
  }