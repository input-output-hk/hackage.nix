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
        name = "delaunay";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "m [dot] ruegenberg [at] picodesign [dot] de";
      author = "Marcel Ruegenberg";
      homepage = "http://github.com/mruegenberg/Delaunay";
      url = "";
      synopsis = "Build a Delaunay triangulation of a set of points";
      description = "This package provides a single function that builds a Delaunay triangulation of a set of points.\nUse '--ghc-options=-fllvm' for improved performance.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.AC-Vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
        ];
      };
      tests = {
        "delaunay-testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.AC-Vector)
            (hsPkgs.delaunay)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }