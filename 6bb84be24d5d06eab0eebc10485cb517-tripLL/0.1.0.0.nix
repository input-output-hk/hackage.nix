{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tripLL";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "pfiff@hax-f.net";
        author = "Philipp Pfeiffer";
        homepage = "https://github.com/aphorisme/tripLL";
        url = "";
        synopsis = "A very simple triple store";
        description = "";
        buildType = "Simple";
      };
      components = {
        tripLL = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.leveldb-haskell
          ];
        };
      };
    }