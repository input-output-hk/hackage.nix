{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "netclock";
          version = "0.6";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "netclock@mail.slab.org";
        author = "Alex McLean";
        homepage = "http://netclock.slab.org/";
        url = "";
        synopsis = "Netclock protocol";
        description = "Implementation of the Netclock protocol for sharing clocks in music performance";
        buildType = "Simple";
      };
      components = {
        netclock = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.hosc
            hsPkgs.bytestring
          ];
        };
      };
    }