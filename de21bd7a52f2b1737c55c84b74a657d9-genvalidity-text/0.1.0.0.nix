{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-text";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "GenValidity support for Text";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        genvalidity-text = {
          depends  = [
            hsPkgs.base
            hsPkgs.validity
            hsPkgs.genvalidity
            hsPkgs.text
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          genvalidity-text-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.genvalidity
              hsPkgs.genvalidity-text
              hsPkgs.text
            ];
          };
        };
      };
    }