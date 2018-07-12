{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "tidal";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "tidal@mail.slab.org";
        author = "Alex McLean";
        homepage = "http://yaxu.org/tidal/";
        url = "";
        synopsis = "Pattern language for improvised music";
        description = "";
        buildType = "Simple";
      };
      components = {
        "tidal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.netclock
            hsPkgs.colour
            hsPkgs.parsec
            hsPkgs.hosc
            hsPkgs.containers
            hsPkgs.diagrams-core
            hsPkgs.diagrams-lib
            hsPkgs.bytestring
            hsPkgs.array
          ];
        };
      };
    }