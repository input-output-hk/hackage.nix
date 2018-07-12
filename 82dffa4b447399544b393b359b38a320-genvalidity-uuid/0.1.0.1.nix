{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-uuid";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017-2018 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "GenValidity support for UUID";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "genvalidity-uuid" = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.genvalidity
            hsPkgs.uuid
            hsPkgs.validity
            hsPkgs.validity-uuid
          ];
        };
        tests = {
          "genvalidity-uuid-test" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.genvalidity
              hsPkgs.genvalidity-hspec
              hsPkgs.genvalidity-uuid
              hsPkgs.hspec
              hsPkgs.uuid
            ];
          };
        };
      };
    }