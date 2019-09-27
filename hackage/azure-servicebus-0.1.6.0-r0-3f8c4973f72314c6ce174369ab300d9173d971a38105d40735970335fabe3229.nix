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
      specVersion = "1.10";
      identifier = { name = "azure-servicebus"; version = "0.1.6.0"; };
      license = "BSD-3-Clause";
      copyright = "Hemanth Kapila (c) 2014-2015";
      maintainer = "saihemanth@gmail.com";
      author = "Hemanth Kapila";
      homepage = "https://github.com/kapilash/hs-azure";
      url = "";
      synopsis = "Haskell wrapper over Microsoft Azure ServiceBus REST API";
      description = "/Overview/\n\nThis library provides haskell wrappers over Microsoft Azure ServiceBus REST API.\nThe current version provides Runtime API for  <http://msdn.microsoft.com/en-us/library/hh780762.aspx queues and topics>.\n\nThe following functionality is covered:\n\n* Send bytestring (lazy as well as strict) to a Queue.\n\n* Send bytestring (lazy as well as strict)  to a topic.\n\n*  Destructively read data from a queue or topic into a lazy bytestring\n\n* acquire peek-locks on messages on Queues and Subscriptions\n\n* renew lock\n\n* delete a locked message\n\n* unlock a locked message";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."azure-acs" or (buildDepError "azure-acs"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."connection" or (buildDepError "connection"))
          (hsPkgs."network" or (buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }