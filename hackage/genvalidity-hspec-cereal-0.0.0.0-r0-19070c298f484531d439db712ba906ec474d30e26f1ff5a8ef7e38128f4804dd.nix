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
        name = "genvalidity-hspec-cereal";
        version = "0.0.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "http://cs-syd.eu";
      url = "";
      synopsis = "Standard spec's for cereal-related instances";
      description = "Standard spec's for cereal-related Instances";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.genvalidity-hspec)
          (hsPkgs.genvalidity)
          (hsPkgs.hspec)
          (hsPkgs.cereal)
          (hsPkgs.QuickCheck)
          (hsPkgs.deepseq)
        ];
      };
      tests = {
        "genvalidity-hspec-cereal-doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.genvalidity-hspec-cereal)
          ];
        };
        "genvalidity-hspec-cereal-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-hspec-cereal)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }