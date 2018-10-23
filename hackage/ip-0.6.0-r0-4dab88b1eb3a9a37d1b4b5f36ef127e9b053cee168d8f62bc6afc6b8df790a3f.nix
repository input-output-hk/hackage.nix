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
        name = "ip";
        version = "0.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/ip#readme";
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
        ];
      };
      tests = {
        "ip-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ip)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.bytestring)
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
          ];
        };
      };
    };
  }