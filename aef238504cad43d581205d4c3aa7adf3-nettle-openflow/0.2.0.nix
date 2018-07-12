{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "nettle-openflow";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "andreas.voellmy@yale.edu";
        author = "Andreas Voellmy, Ashish Agarwal, John Launchbury";
        homepage = "";
        url = "";
        synopsis = "OpenFlow protocol messages, binary formats, and servers.";
        description = "This package provides data types that model the messages of the OpenFlow protocol,\nfunctions that implement serialization and deserialization between these data\ntypes and their binary representations in the protocol, and an efficient OpenFlow server.\nThe library is under active development.";
        buildType = "Simple";
      };
      components = {
        "nettle-openflow" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.binary-strict
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.network
            hsPkgs.containers
            hsPkgs.bimap
            hsPkgs.HList
            hsPkgs.syb
            hsPkgs.array
          ];
        };
      };
    }