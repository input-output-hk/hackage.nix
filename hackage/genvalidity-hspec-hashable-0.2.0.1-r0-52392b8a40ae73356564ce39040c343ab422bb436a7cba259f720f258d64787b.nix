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
        name = "genvalidity-hspec-hashable";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "2017-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Nick Van den Broeck";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Standard spec's for Hashable instances";
      description = "Standard spec's for Hashable instances";
      buildType = "Simple";
    };
    components = {
      "genvalidity-hspec-hashable" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.genvalidity)
          (hsPkgs.genvalidity-hspec)
          (hsPkgs.genvalidity-property)
          (hsPkgs.hashable)
          (hsPkgs.hspec)
          (hsPkgs.validity)
        ];
      };
      tests = {
        "genvalidity-hspec-hashable-doctests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.genvalidity-hspec-hashable)
            (hsPkgs.hashable)
          ];
        };
        "genvalidity-hspec-hashable-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.genvalidity-hspec-hashable)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
          ];
        };
      };
    };
  }