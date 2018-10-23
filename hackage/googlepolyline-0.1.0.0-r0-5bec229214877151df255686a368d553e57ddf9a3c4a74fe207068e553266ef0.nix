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
        name = "googlepolyline";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@lorne.me";
      author = "Lorne Applebaum";
      homepage = "";
      url = "";
      synopsis = "Google Polyline Encoder/Decoder";
      description = "";
      buildType = "Simple";
    };
    components = {
      "googlepolyline" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test-googlepolyline" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework)
          ];
        };
      };
    };
  }