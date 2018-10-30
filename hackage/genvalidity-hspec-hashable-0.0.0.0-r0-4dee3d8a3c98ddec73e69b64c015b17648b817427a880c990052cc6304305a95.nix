{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "genvalidity-hspec-hashable";
        version = "0.0.0.0";
      };
      license = "MIT";
      copyright = "2017 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Nick Van den Broeck";
      homepage = "https://github.com/NorfairKing/validity";
      url = "";
      synopsis = "Standard spec's for Hashable instances";
      description = "Standard spec's for Hashable instances";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.validity)
          (hsPkgs.genvalidity-hspec)
          (hsPkgs.genvalidity)
          (hsPkgs.genvalidity-property)
          (hsPkgs.hspec)
          (hsPkgs.hashable)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "genvalidity-hspec-hashable-doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.hashable)
            (hsPkgs.genvalidity-hspec-hashable)
            (hsPkgs.QuickCheck)
          ];
        };
        "genvalidity-hspec-hashable-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.genvalidity-hspec-hashable)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }