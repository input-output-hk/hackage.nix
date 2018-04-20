{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-unordered-containers";
          version = "0.0.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "GenValidity support for unordered-containers";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        genvalidity-unordered-containers = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.genvalidity
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.validity
            hsPkgs.validity-unordered-containers
          ];
        };
        tests = {
          genvalidity-unordered-containers-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.unordered-containers
              hsPkgs.genvalidity
              hsPkgs.genvalidity-hspec
              hsPkgs.genvalidity-unordered-containers
              hsPkgs.hspec
            ];
          };
        };
      };
    }