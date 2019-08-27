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
      identifier = { name = "stomp-queue"; version = "0.0.7"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) Tobias Schoofs, 2011 - 2013";
      maintainer = "tobias dot schoofs at gmx dot net";
      author = "Tobias Schoofs";
      homepage = "http://github.com/toschoo/mom";
      url = "";
      synopsis = "Stompl Client Library";
      description = "The Stomp Protocol specifies message-oriented interoperability.\nApplications connect to a message broker to send (publish)\nor receive (subscribe) messages through queues.\nInteroperating applications do not know\nthe location or internal structure of each other.\nThey see only each other's interfaces, /i.e./ the messages\npublished and subscribed through the broker.\nThe Stomp Queue library provides\na Stomp client, using abstractions like\n'Connection', 'Transaction', 'Queue' and 'Message'.\nMore information, examples and a test suite are available\non <http://github.com/toschoo/mom>.\nThe Stomp specification can be found at\n<http://stomp.github.com>.\n\nRelease History:\n\n[0.0.7] Fighting with hackagedb...\n\n[0.0.6] Heartbeats caused a memory leak by creating\nmany Connection instances in the connection state list.\nThe connections were lazily deleted, /i.e./ were\nnot deleted at all.\nConnection state is now cleaned up by a strict delete.\n\n[0.0.5] Underscore functions removed;\nwith* functions: withWriter, withPair;\nnew option for connection (ClientId);\nHeaders for broker-specific options can be passed to connection.\n\n[0.0.3] New interface writeAdHoc\n\n[0.0.2] Minor corrections\n\n[0.0.1] Initial release";
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
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."stompl" or (buildDepError "stompl"))
          (hsPkgs."mime" or (buildDepError "mime"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        };
      };
    }