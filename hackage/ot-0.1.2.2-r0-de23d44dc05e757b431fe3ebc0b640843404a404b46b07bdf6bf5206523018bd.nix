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
      specVersion = "1.8";
      identifier = {
        name = "ot";
        version = "0.1.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tim@timbaumann.info";
      author = "Tim Baumann";
      homepage = "https://github.com/operational-transformation/ot.hs";
      url = "";
      synopsis = "Real-time collaborative editing with Operational Transformation";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.QuickCheck)
          (hsPkgs.binary)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.ot)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.binary)
          ];
        };
      };
    };
  }