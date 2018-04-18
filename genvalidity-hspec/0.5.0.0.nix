{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-hspec";
          version = "0.5.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "Standard spec's for GenValidity instances";
        description = "Note: There are companion packages for this library:\n\n* <https://hackage.haskell.org/package/genvalidity-hspec-aeson genvalidity-hspec-aeson>\n\n* <https://hackage.haskell.org/package/genvalidity-hspec-binary genvalidity-hspec-binary>\n\n* <https://hackage.haskell.org/package/genvalidity-hspec-cereal genvalidity-hspec-cereal>\n\n* <https://hackage.haskell.org/package/genvalidity-hspec-hashable genvalidity-hspec-hashable>";
        buildType = "Simple";
      };
      components = {
        genvalidity-hspec = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.genvalidity
            hsPkgs.genvalidity-property
            hsPkgs.hspec
            hsPkgs.hspec-core
            hsPkgs.validity
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
              hsPkgs.hspec-core
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }