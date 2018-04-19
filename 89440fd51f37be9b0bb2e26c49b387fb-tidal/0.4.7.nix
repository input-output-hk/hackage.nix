{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "tidal";
          version = "0.4.7";
        };
        license = "GPL-3.0-only";
        copyright = "(c) Alex McLean and others, 2013";
        maintainer = "alex@slab.org";
        author = "Alex McLean";
        homepage = "http://yaxu.org/tidal/";
        url = "";
        synopsis = "Pattern language for improvised music";
        description = "Tidal is a domain specific language for live coding pattern.";
        buildType = "Simple";
      };
      components = {
        tidal = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.parsec
            hsPkgs.hosc
            hsPkgs.hashable
            hsPkgs.colour
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.websockets
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.mersenne-random-pure64
            hsPkgs.binary
            hsPkgs.bytestring
          ];
        };
      };
    }