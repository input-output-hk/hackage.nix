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
      identifier = { name = "stomp-patterns"; version = "0.5.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) Tobias Schoofs, 2013 - 2020";
      maintainer = "tobias dot schoofs at gmx dot net";
      author = "Tobias Schoofs";
      homepage = "http://github.com/toschoo/mom";
      url = "";
      synopsis = "Stompl MOM Stomp Patterns";
      description = "The Stomp Protocol specifies a reduced message broker\nwith queues usually read by one application and written\nby one or more applications.\nThe specification does not include other, more advanced,\ninteroperability patterns, where, for example,\na client requests a job from a server or\na publisher sends data to many subscribers.\nSuch communication patterns, apparantly,\nare left to be implemented by applications.\nPatterns like client-server, publish and subscribe\nand many others, however, are used over and over again\nin message-oriented applications.\n\nThis library implements a number of communication patterns\non top of the Stomp specification\nthat are often used and often described in the literature.\nThere is a set of /basic/ patterns,\n\n* client-server,\n\n* publish and subscribe and\n\n* pusher-worker (pipeline)\n\nas well as a set of derived patterns, namely:\n\n* Desk: A service to obtain the access point\n(/i.e./ queue name) of a specified provider;\n\n* Load balancers: Services to balance requests\namong a group of connected /workers/\n(a.k.a. /Majordomo/ pattern);\n\n* Bridge: Connections between brokers.\n\nMore information, examples and a test suite are available\non <http://github.com/toschoo/mom>.\nThe Stomp specification can be found at\n<http://stomp.github.com>.\n\nThe notion of /pattern/ and the related concepts,\nas they are presented here,\nrely heavily on\nPieter Hintjens, \\\"Code Connected\\\", O'Reilly, 2013\n(see also <http://hintjens.com/books>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stomp-queue" or (errorHandler.buildDepError "stomp-queue"))
          (hsPkgs."stompl" or (errorHandler.buildDepError "stompl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        buildable = true;
      };
    };
  }