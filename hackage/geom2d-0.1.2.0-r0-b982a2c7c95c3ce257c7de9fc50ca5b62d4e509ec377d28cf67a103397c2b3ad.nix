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
        name = "geom2d";
        version = "0.1.2.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "sebastian.jordan.mail@googlemail.com";
      author = "Sebastian Jordan";
      homepage = "";
      url = "";
      synopsis = "package for geometry in euklidean 2d space";
      description = "This package provides tools for dealing with geometric\nobjects in 2D space.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.ieee754)
        ];
      };
      tests = {
        "point" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ieee754)
            (hsPkgs.QuickCheck)
          ];
        };
        "line" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ieee754)
            (hsPkgs.QuickCheck)
          ];
        };
        "intersect" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ieee754)
            (hsPkgs.QuickCheck)
          ];
        };
        "distance" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ieee754)
            (hsPkgs.QuickCheck)
          ];
        };
        "translate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ieee754)
            (hsPkgs.QuickCheck)
          ];
        };
        "shape" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ieee754)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }