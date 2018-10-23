{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "stringlike";
        version = "0.0.0";
      };
      license = "MIT";
      copyright = "Selectel";
      maintainer = "Fedor Gogolev <knsd@knsd.net>";
      author = "Fedor Gogolev <knsd@knsd.net>";
      homepage = "https://github.com/selectel/stringlike";
      url = "";
      synopsis = "Transformations to several string-like types";
      description = "Transformations to several string-like types";
      buildType = "Custom";
    };
    components = {
      "stringlike" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "stringlike-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
    };
  }