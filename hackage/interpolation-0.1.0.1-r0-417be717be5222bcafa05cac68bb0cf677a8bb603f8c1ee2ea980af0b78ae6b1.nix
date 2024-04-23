{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { buildexamples = false; hmatrix = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "interpolation"; version = "0.1.0.1"; };
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
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      exes = {
        "interpolation-plot" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."interpolation" or (errorHandler.buildDepError "interpolation"))
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "interpolation-fit" = {
          depends = pkgs.lib.optionals (flags.buildexamples && flags.hmatrix) [
            (hsPkgs."interpolation" or (errorHandler.buildDepError "interpolation"))
            (hsPkgs."hmatrix-banded" or (errorHandler.buildDepError "hmatrix-banded"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples && flags.hmatrix
            then true
            else false;
        };
      };
      tests = {
        "interpolation-test" = {
          depends = [
            (hsPkgs."interpolation" or (errorHandler.buildDepError "interpolation"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }