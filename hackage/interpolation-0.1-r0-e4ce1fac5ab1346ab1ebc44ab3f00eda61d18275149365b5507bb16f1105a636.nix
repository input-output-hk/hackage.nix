let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; hmatrix = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "interpolation"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann";
      homepage = "http://code.haskell.org/~thielema/interpolation/";
      url = "";
      synopsis = "piecewise linear and cubic Hermite interpolation";
      description = "Represent real functions by linear or cubic polynomial segments.\nThe package provides both data structures\nfor efficient lookup of interpolation intervals,\nand computation of basis functions.\n\nThere are two examples that can be built with\n\n> cabal install -fbuildExamples\n\n* @example/Plot.hs@:\nInterpolate a sinus curve using piecewise linear interpolation\nand piecewise Hermite cubic interpolation.\nFor the latter one we provide the derivatives of the sinus function\nat the interpolation nodes.\n\n* @example/Fit.hs@:\nDemonstrates how to use the basis functions\nfor fitting an interpolation function to a given function\nusing a linear least squares solver like @<\\>@ from @hmatrix@.\nWe use a distorted sinus as target.\n\nThe package needs only Haskell 98.\nMost of the package dependencies are only needed for the examples\nand are only installed if you enable to build them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "interpolation-plot" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."interpolation" or (buildDepError "interpolation"))
            (hsPkgs."gnuplot" or (buildDepError "gnuplot"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "interpolation-fit" = {
          depends = (pkgs.lib).optionals (flags.buildexamples && flags.hmatrix) [
            (hsPkgs."interpolation" or (buildDepError "interpolation"))
            (hsPkgs."hmatrix-banded" or (buildDepError "hmatrix-banded"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."gnuplot" or (buildDepError "gnuplot"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples && flags.hmatrix
            then true
            else false;
          };
        };
      tests = {
        "interpolation-test" = {
          depends = [
            (hsPkgs."interpolation" or (buildDepError "interpolation"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }