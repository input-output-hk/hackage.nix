{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "azure-servicebus";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Hemanth Kapila (c) 2014-2015";
        maintainer = "saihemanth@gmail.com";
        author = "Hemanth Kapila";
        homepage = "https://github.com/kapilash/hs-azure";
        url = "";
        synopsis = "Haskell wrapper over Microsoft Azure ServiceBus REST API";
        description = "This library provides haskell wrappers over Microsoft Azure ServiceBus REST API.\nThe current version provides <http://msdn.microsoft.com/en-us/library/hh780762.aspx Runtime API> for queues.";
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