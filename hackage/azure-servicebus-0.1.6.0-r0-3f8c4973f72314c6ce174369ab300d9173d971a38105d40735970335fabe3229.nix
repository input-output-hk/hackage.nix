{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."azure-acs" or ((hsPkgs.pkgs-errors).buildDepError "azure-acs"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }