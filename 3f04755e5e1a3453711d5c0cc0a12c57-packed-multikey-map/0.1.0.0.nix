{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "packed-multikey-map";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "(@) jsagemue \$ uni-koeln.de";
        author = "Justus Sagemüller";
        homepage = "https://github.com/leftaroundabout/packed-multikey-map";
        url = "";
        synopsis = "Efficient “spreadsheet table” like maps with multiple marginals";
        description = "";
        buildType = "Simple";
      };
      components = {
        packed-multikey-map = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.constraints
            hsPkgs.QuickCheck
            hsPkgs.transformers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.packed-multikey-map
            ];
          };
        };
      };
    }