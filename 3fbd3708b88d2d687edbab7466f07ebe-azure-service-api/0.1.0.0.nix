{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "azure-service-api";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Well-Typed LLP";
        maintainer = "edsko@well-typed.com";
        author = "Edsko de Vries";
        homepage = "github.com/haskell-distributed/azure-service-api";
        url = "";
        synopsis = "Haskell bindings for the Microsoft Azure Service Management API";
        description = "At the moment, this module only provides minimal\nfunctionality, just enough to support the\n\"distributed-process-azure\" package (Azure backend for\nCloud Haskell). However, the code is set up in such a way\nthat adding additional functionality should be relatively\nstraightforward; developers who wish to do will probably\nwant to consult the Windows Azure Service Management REST\nAPI Reference\n(<http://msdn.microsoft.com/en-us/library/windowsazure/ee460799.aspx>).";
        buildType = "Simple";
      };
      components = {
        azure-service-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.tls
            hsPkgs.tls-extra
            hsPkgs.bytestring
            hsPkgs.certificate
            hsPkgs.case-insensitive
            hsPkgs.hxt
            hsPkgs.hxt-xpath
            hsPkgs.pretty
            hsPkgs.crypto-pubkey-types
            hsPkgs.binary
            hsPkgs.resourcet
            hsPkgs.transformers
          ];
        };
      };
    }