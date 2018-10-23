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
        name = "genvalidity-hspec-binary";
        version = "0.0.0.0";
      };
      license = "MIT";
      copyright = "2017 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Nick Van den Broeck";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Standard spec's for binary-related Instances";
      description = "Standard spec's for cereal-related Instances, see https://hackage.haskell.org/package/binary.";
      buildType = "Simple";
    };
    components = {
      "genvalidity-hspec-binary" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.genvalidity-hspec)
          (hsPkgs.genvalidity)
          (hsPkgs.hspec)
          (hsPkgs.binary)
          (hsPkgs.QuickCheck)
          (hsPkgs.deepseq)
        ];
      };
      tests = {
        "genvalidity-hspec-binary-doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.genvalidity-hspec-binary)
          ];
        };
        "genvalidity-hspec-binary-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-hspec-binary)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }