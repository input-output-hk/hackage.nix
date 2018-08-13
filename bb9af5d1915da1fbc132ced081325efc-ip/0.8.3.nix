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
        name = "ip";
        version = "0.8.3";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/haskell-ip#readme";
      url = "";
      synopsis = "Library for IP and MAC addresses";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "ip" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.primitive)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ip)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ip)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "criterion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ip)
            (hsPkgs.criterion)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
          ];
        };
      };
    };
  }