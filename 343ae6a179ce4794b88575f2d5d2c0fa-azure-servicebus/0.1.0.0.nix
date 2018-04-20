{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "azure-servicebus";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Hemanth Kapila (c) 2014-2015";
        maintainer = "saihemanth@gmail.com";
        author = "Hemanth Kapila";
        homepage = "https://github.com/kapilash/hs-azure";
        url = "";
        synopsis = "Windows Azure ServiceBus API";
        description = "Haskell wrappers over Windows Azure ServiceBus API.";
        buildType = "Simple";
      };
      components = {
        azure-servicebus = {
          depends  = [
            hsPkgs.base
            hsPkgs.azure-acs
            hsPkgs.bytestring
            hsPkgs.http-conduit
            hsPkgs.conduit
            hsPkgs.http-types
            hsPkgs.attoparsec
            hsPkgs.async
            hsPkgs.http-client
            hsPkgs.connection
          ];
        };
      };
    }