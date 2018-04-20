{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mbtiles";
          version = "0.6.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Joe Canero";
        maintainer = "jmc41493@gmail.com";
        author = "Joe Canero";
        homepage = "https://github.com/caneroj1/mbtiles#readme";
        url = "";
        synopsis = "Haskell MBTiles client.";
        description = "Read and manipulate MBTiles files and associated metadata.";
        buildType = "Simple";
      };
      components = {
        mbtiles = {
          depends  = [
            hsPkgs.base
            hsPkgs.sqlite-simple
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.resource-pool
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          mbtiles-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.mbtiles
              hsPkgs.HUnit
            ];
          };
        };
      };
    }