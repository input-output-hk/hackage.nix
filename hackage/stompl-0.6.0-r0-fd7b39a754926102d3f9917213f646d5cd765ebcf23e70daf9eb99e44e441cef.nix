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
      specVersion = "1.20";
      identifier = { name = "stompl"; version = "0.6.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) Tobias Schoofs, 2011 - 2020";
      maintainer = "tobias dot schoofs at gmx dot net";
      author = "Tobias Schoofs";
      homepage = "http://github.com/toschoo/mom";
      url = "";
      synopsis = "Stomp Parser and Utilities";
      description = "The Stomp Protocol specifies message-oriented interoperability.\nApplications connect to a message broker to send (publish)\nor receive (subscribe) messages through queues.\nInteroperating applications do not know\nthe location or internal structure of each other.\nThey see only each other's interfaces, /i.e./ the messages\npublished and subscribed through the broker.\nBroker and application use a protocol based on the\nexchange of commands and other data packets, called /frames/.\nThe Stompl library provides abstractions over Stomp frames\nand a Stomp frame parser.\nIt does not implement a client or broker itself,\nbut provides abstractions to libraries and programs doing so.\nIt is used by the Stompl Queue library (stomp-queues).\nMore documentation and a test suite can be found on\n<https://github.com/toschoo/mom/>.\nThe Stomp specification can be found at\n<http://stomp.github.com>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }