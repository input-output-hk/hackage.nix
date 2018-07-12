{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "tidal";
          version = "0.2.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "alex@slab.org";
        author = "Alex McLean";
        homepage = "http://yaxu.org/tidal/";
        url = "";
        synopsis = "Pattern language for improvised music";
        description = "Tidal is a language for live coding pattern, embedded in the Haskell language.";
        buildType = "Simple";
      };
      components = {
        "tidal" = {
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
          ];
        };
      };
    }