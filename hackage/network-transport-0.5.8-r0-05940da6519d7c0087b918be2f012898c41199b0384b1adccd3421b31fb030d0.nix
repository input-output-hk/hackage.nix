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
      identifier = { name = "network-transport"; version = "0.5.8"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "The Distributed Haskell team";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "https://haskell-distributed.github.io";
      url = "";
      synopsis = "Network abstraction layer";
      description = "\"Network.Transport\" is a Network Abstraction Layer which provides\nthe following high-level concepts:\n.\n  * Nodes in the network are represented by 'EndPoint's. These are\n    heavyweight stateful objects.\n.\n  * Each 'EndPoint' has an 'EndPointAddress'.\n.\n  * Connections can be established from one 'EndPoint' to another\n    using the 'EndPointAddress' of the remote end.\n.\n  * The 'EndPointAddress' can be serialised and sent over the\n    network, whereas 'EndPoint's and connections cannot.\n.\n  * Connections between 'EndPoint's are unidirectional and lightweight.\n.\n  * Outgoing messages are sent via a 'Connection' object that\n    represents the sending end of the connection.\n.\n  * Incoming messages for /all/ of the incoming connections on\n    an 'EndPoint' are collected via a shared receive queue.\n.\n  * In addition to incoming messages, 'EndPoint's are notified of\n    other 'Event's such as new connections or broken connections.\n.\nThis design was heavily influenced by the design of the Common\nCommunication Interface\n(<http://www.olcf.ornl.gov/center-projects/common-communication-interface>).\nImportant design goals are:\n.\n* Connections should be lightweight: it should be no problem to\n  create thousands of connections between endpoints.\n.\n* Error handling is explicit: every function declares as part of\n  its type which errors it can return (no exceptions are thrown)\n.\n* Error handling is \"abstract\": errors that originate from\n  implementation specific problems (such as \"no more sockets\" in\n  the TCP implementation) get mapped to generic errors\n  (\"insufficient resources\") at the Transport level.\n.\nThis package provides the generic interface only; you will\nprobably also want to install at least one transport\nimplementation (network-transport-*).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        libs = pkgs.lib.optional (system.isWindows) (pkgs."ws2_32" or (errorHandler.sysDepError "ws2_32"));
        buildable = true;
      };
    };
  }