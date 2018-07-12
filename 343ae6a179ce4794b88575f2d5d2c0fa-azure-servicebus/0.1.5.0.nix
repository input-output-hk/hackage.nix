{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "azure-servicebus";
          version = "0.1.5.0";
        };
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
        "azure-servicebus" = {
          depends  = [
            hsPkgs.base
            hsPkgs.azure-acs
            hsPkgs.bytestring
            hsPkgs.http-conduit
            hsPkgs.conduit
            hsPkgs.http-types
            hsPkgs.attoparsec
            hsPkgs.case-insensitive
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.async
            hsPkgs.http-client
            hsPkgs.connection
            hsPkgs.network
          ];
        };
      };
    }