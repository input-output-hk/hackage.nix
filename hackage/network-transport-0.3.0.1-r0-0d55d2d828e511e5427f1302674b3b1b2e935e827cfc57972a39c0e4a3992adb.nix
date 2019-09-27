let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "network-transport"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com, duncan@well-typed.com";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process";
      url = "";
      synopsis = "Network abstraction layer";
      description = "\"Network.Transport\" is a Network Abstraction Layer which provides\nthe following high-level concepts:\n\n* Nodes in the network are represented by 'EndPoint's. These are\nheavyweight stateful objects.\n\n* Each 'EndPoint' has an 'EndPointAddress'.\n\n* Connections can be established from one 'EndPoint' to another\nusing the 'EndPointAddress' of the remote end.\n\n* The 'EndPointAddress' can be serialised and sent over the\nnetwork, where as 'EndPoint's and connections cannot.\n\n* Connections between 'EndPoint's are unidirectional and lightweight.\n\n* Outgoing messages are sent via a 'Connection' object that\nrepresents the sending end of the connection.\n\n* Incoming messages for /all/ of the incoming connections on\nan 'EndPoint' are collected via a shared receive queue.\n\n* In addition to incoming messages, 'EndPoint's are notified of\nother 'Event's such as new connections or broken connections.\n\nThis design was heavily influenced by the design of the Common\nCommunication Interface\n(<http://www.olcf.ornl.gov/center-projects/common-communication-interface>).\nImportant design goals are:\n\n* Connections should be lightweight: it should be no problem to\ncreate thousands of connections between endpoints.\n\n* Error handling is explicit: every function declares as part of\nits type which errors it can return (no exceptions are thrown)\n\n* Error handling is \"abstract\": errors that originate from\nimplementation specific problems (such as \"no more sockets\" in\nthe TCP implementation) get mapped to generic errors\n(\"insufficient resources\") at the Transport level.\n\nThis package provides the generic interface only; you will\nprobably also want to install at least one transport\nimplementation (network-transport-*).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }