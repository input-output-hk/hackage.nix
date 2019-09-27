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
      specVersion = "1.8";
      identifier = { name = "stompl"; version = "0.1.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) Tobias Schoofs, 2011 - 2013";
      maintainer = "tobias dot schoofs at gmx dot net";
      author = "Tobias Schoofs";
      homepage = "http://github.com/toschoo/mom";
      url = "";
      synopsis = "Stomp Parser and Utilities";
      description = "The Stomp Protocol specifies message-oriented interoperability.\nApplications connect to a message broker to send (publish)\nor receive (subscribe) messages through queues.\nInteroperating applications do not know\nthe location or internal structure of each other.\nThey see only each other's interfaces, /i.e./ the messages\npublished and subscribed through the broker.\nBroker and application use a protocol based on the\nexchange of commands and other data packets, called /frames/.\nThe Stompl library provides abstractions over Stomp frames\nand a Stomp frame parser.\nIt does not implement a client or broker itself,\nbut provides abstractions to libraries and programs doing so.\nIt is used by the Stompl Queue library (stomp-queues).\nMore documentation and a test suite can be found on\n<https://github.com/toschoo/mom/>.\nThe Stomp specification can be found at\n<http://stomp.github.com>.\n\nRelease History:\n\n[0.1.0] Major changes:\n\n- Compliance with Stomp 1.2:\n\n- header keys and values are now escaped;\nthis, in fact, was missing for Stomp 1.1.\n\n- header keys and values are not trimmed or padded;\nthis, as well, should have been done for Stomp 1.1 already.\nBe aware that Stomp 1.0-like message headers\nmay fail now, /e.g./:\n/message : hello world/\nis not the same anymore as\n/message:hello world/\n\n- carriage return (ascii 13) plus line feed (ascii 10)\nis now accepted as end-of-line;\nnote that stompl never generates carriage return as end-of-line,\nthe standard end-of-line remains line feed.\n\n- the Message frame may have an /ack/ header\nand should have when a message is sent\nthrough a queue that requires explicit ack.\n\n- the mandatory header in the Ack frame is now /id/\ninstead of /message-id/. It should correspond to /ack/\nin the message that is ack'd.\nNote that, to ease backward compatibility,\nAck frames are generated with both:\nan /id/ and a /message-id/ header.\n\n- a Stomp frame was added.\nThe Stomp frame has exactly the same format\nas the Connect frame, but it is handled differently\nwith respect to escaping: Connect header keys and values\nare not escaped, Stomp header keys and values, however, are.\n\n[0.0.3] Major changes:\n\n- new attribute \"ClientId\" in Connect frame\nfor compatibility with ActiveMQ;\n\n- all commands accept additional headers\nto ease adaptations to broker-specific features.\n\n[0.0.2] Minor corrections and documentation\n\n[0.0.1] Initial Release";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."mime" or (buildDepError "mime"))
          ];
        buildable = true;
        };
      };
    }