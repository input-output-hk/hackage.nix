{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "hydrogen-multimap";
          version = "0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "julian@scravy.de";
        author = "Julian Fleischer";
        homepage = "https://scravy.de/hydrogen-multimap/";
        url = "";
        synopsis = "Hydrogen Multimap";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hydrogen-multimap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.ghc-prim
          ];
        };
      };
    }