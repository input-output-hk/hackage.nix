{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "compression";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Ian Lynagh, 2004, 2007";
        maintainer = "igloo@earth.li";
        author = "Ian Lynagh";
        homepage = "http://urchin.earth.li/~ian/cabal/compression/";
        url = "";
        synopsis = "Common compression algorithms.";
        description = "Currently contains:\n* An implementation of the inflate algorithm from RFC 1951\n(decompression only).\n* An implementation of the gzip algorithm from RFC 1952\n(decompression only).";
        buildType = "Custom";
      };
      components = {
        compression = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }