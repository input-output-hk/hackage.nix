{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-hspec";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "Standard spec's for GenValidity instances";
        description = "Note: There are companion packages for this library:\n\n* <https://hackage.haskell.org/package/genvalidity-hspec-aeson genvalidity-hspec-aeson>\n\n* <https://hackage.haskell.org/package/genvalidity-hspec-cereal genvalidity-hspec-cereal>";
        buildType = "Simple";
      };
      components = {
        genvalidity-hspec = {
          depends  = [
            hsPkgs.base
            hsPkgs.validity
            hsPkgs.genvalidity
            hsPkgs.QuickCheck
            hsPkgs.hspec
          ];
        };
        tests = {
          genvalidity-hspec-doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.genvalidity-hspec
            ];
          };
          genvalidity-hspec-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.genvalidity
              hsPkgs.genvalidity-hspec
              hsPkgs.hspec
            ];
          };
        };
      };
    }