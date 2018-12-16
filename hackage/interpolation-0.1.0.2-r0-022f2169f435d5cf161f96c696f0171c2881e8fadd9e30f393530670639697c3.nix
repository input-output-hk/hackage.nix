{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexamples = false;
      hmatrix = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "interpolation";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/interpolation/";
      url = "";
      synopsis = "piecewise linear and cubic Hermite interpolation";
      description = "Represent real functions by linear or cubic polynomial segments.\nThe package provides both data structures\nfor efficient lookup of interpolation intervals,\nand computation of basis functions.\n\nThere are two examples that can be built with\n\n> cabal install -fbuildExamples\n\n* @example/Plot.hs@:\nInterpolate a sinus curve using piecewise linear interpolation\nand piecewise Hermite cubic interpolation.\nFor the latter one we provide the derivatives of the sinus function\nat the interpolation nodes.\n\n* @example/Fit.hs@:\nDemonstrates how to use the basis functions\nfor fitting an interpolation function to a given function\nusing a linear least squares solver like @<\\>@ from @hmatrix@.\nWe use a distorted sinus as target.\n\nThe package needs only Haskell 98.\nMost of the package dependencies are only needed for the examples\nand are only installed if you enable to build them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.utility-ht)
          (hsPkgs.base)
        ];
      };
      exes = {
        "interpolation-plot" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.interpolation)
            (hsPkgs.gnuplot)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "interpolation-fit" = {
          depends = pkgs.lib.optionals (flags.buildexamples && flags.hmatrix) [
            (hsPkgs.interpolation)
            (hsPkgs.hmatrix-banded)
            (hsPkgs.hmatrix)
            (hsPkgs.random)
            (hsPkgs.gnuplot)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
      tests = {
        "interpolation-test" = {
          depends = [
            (hsPkgs.interpolation)
            (hsPkgs.QuickCheck)
            (hsPkgs.utility-ht)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.base)
          ];
        };
      };
    };
  }