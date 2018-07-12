{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-aeson";
          version = "0.0.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "GenValidity support for aeson";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "genvalidity-aeson" = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.genvalidity
            hsPkgs.validity
            hsPkgs.validity-aeson
            hsPkgs.genvalidity-text
            hsPkgs.genvalidity-vector
            hsPkgs.genvalidity-unordered-containers
            hsPkgs.genvalidity-scientific
            hsPkgs.aeson
          ];
        };
        tests = {
          "genvalidity-aeson-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.genvalidity
              hsPkgs.genvalidity-hspec
              hsPkgs.genvalidity-aeson
              hsPkgs.hspec
              hsPkgs.aeson
            ];
          };
        };
      };
    }