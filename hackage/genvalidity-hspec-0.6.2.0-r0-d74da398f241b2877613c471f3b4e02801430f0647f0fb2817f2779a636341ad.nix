{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "genvalidity-hspec";
        version = "0.6.2.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com,\nnick.van.den.broeck666@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Standard spec's for GenValidity instances";
      description = "Note: There are companion packages for this library:\n\n* <https://hackage.haskell.org/package/genvalidity-hspec-aeson genvalidity-hspec-aeson>\n\n* <https://hackage.haskell.org/package/genvalidity-hspec-binary genvalidity-hspec-binary>\n\n* <https://hackage.haskell.org/package/genvalidity-hspec-cereal genvalidity-hspec-cereal>\n\n* <https://hackage.haskell.org/package/genvalidity-hspec-hashable genvalidity-hspec-hashable>";
      buildType = "Simple";
    };
    components = {
      "genvalidity-hspec" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.genvalidity)
          (hsPkgs.genvalidity-property)
          (hsPkgs.hspec)
          (hsPkgs.hspec-core)
          (hsPkgs.transformers)
          (hsPkgs.validity)
        ];
      };
      tests = {
        "genvalidity-hspec-doctests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.hspec-core)
          ];
        };
        "genvalidity-hspec-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
          ];
        };
      };
    };
  }