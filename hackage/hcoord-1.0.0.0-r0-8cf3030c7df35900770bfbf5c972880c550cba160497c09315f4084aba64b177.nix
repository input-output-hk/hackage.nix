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
        name = "hcoord";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "copyleft";
      maintainer = "dfrancesconi12@gmail.com";
      author = "Daniele Francesconi";
      homepage = "https://github.com/danfran/hcoord#readme";
      url = "";
      synopsis = "Easily convert between latitude/longitude, UTM and OSGB.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.regex-pcre)
        ];
      };
      exes = {
        "hcoord-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hcoord)
          ];
        };
      };
      tests = {
        "hcoord-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hcoord)
            (hsPkgs.mtl)
            (hsPkgs.ieee754)
            (hsPkgs.data-default)
          ];
        };
      };
    };
  }