{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "tidal-serial";
          version = "0.8";
        };
        license = "GPL-3.0-only";
        copyright = "(c) Lennart Melzer and other contributors, 2016";
        maintainer = "Lennart <lennart@melzer.it>, Alex McLean <alex@slab.org>, Mike Hodnick <mike.hodnick@gmail.com>";
        author = "Lennart Melzer";
        homepage = "http://tidalcycles.org/";
        url = "";
        synopsis = "Serial support for tidal";
        description = "Serial stream for Tidal";
        buildType = "Simple";
      };
      components = {
        tidal-serial = {
          depends  = [
            hsPkgs.base
            hsPkgs.tidal
            hsPkgs.serialport
            hsPkgs.bytestring
            hsPkgs.containers
          ];
        };
      };
    }