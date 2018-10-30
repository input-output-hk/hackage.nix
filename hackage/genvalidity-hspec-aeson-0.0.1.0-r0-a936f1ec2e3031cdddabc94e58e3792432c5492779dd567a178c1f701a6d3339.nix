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
        name = "genvalidity-hspec-aeson";
        version = "0.0.1.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "http://cs-syd.eu";
      url = "";
      synopsis = "Standard spec's for aeson-related instances";
      description = "Standard spec's for aeson-related Instances";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.genvalidity-hspec)
          (hsPkgs.genvalidity)
          (hsPkgs.hspec)
          (hsPkgs.aeson)
          (hsPkgs.QuickCheck)
          (hsPkgs.deepseq)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "genvalidity-hspec-aeson-doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.genvalidity-hspec-aeson)
          ];
        };
        "genvalidity-hspec-aeson-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-hspec-aeson)
            (hsPkgs.hspec)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.genvalidity-text)
          ];
        };
      };
    };
  }