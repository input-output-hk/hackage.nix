{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "genvalidity-hspec-aeson";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "http://cs-syd.eu";
      url = "";
      synopsis = "Standard spec's for aeson-related instances";
      description = "Standard spec's for aeson-related Instances";
      buildType = "Simple";
    };
    components = {
      "genvalidity-hspec-aeson" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.genvalidity)
          (hsPkgs.genvalidity-hspec)
          (hsPkgs.hspec)
        ];
      };
      tests = {
        "genvalidity-hspec-aeson-doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.genvalidity-hspec-aeson)
            (hsPkgs.hspec)
          ];
        };
        "genvalidity-hspec-aeson-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-aeson)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.genvalidity-hspec-aeson)
            (hsPkgs.genvalidity-text)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }