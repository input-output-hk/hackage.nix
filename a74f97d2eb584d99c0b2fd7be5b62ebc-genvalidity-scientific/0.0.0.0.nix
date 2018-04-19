{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-scientific";
          version = "0.0.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "GenValidity support for Scientific";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        genvalidity-scientific = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.genvalidity
            hsPkgs.scientific
            hsPkgs.validity
            hsPkgs.validity-scientific
          ];
        };
        tests = {
          genvalidity-scientific-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.genvalidity
              hsPkgs.genvalidity-hspec
              hsPkgs.genvalidity-scientific
              hsPkgs.hspec
              hsPkgs.scientific
            ];
          };
        };
      };
    }