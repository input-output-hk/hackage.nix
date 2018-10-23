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
        name = "plan-applicative";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz.carrete@facebook.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "Applicative/Arrow for resource estimation and progress tracking.";
      description = "This module contains a writer-like Applicative for giving\nmonoidal annotations to underlying computations. The\nannotations are available before running the computations.\nIt also allows tagging different parts of a computation as\nseparate steps, so that progress notifications can be\nemitted during execution. Optional steps are allowed.";
      buildType = "Simple";
    };
    components = {
      "plan-applicative" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.profunctors)
          (hsPkgs.bifunctors)
          (hsPkgs.streaming)
          (hsPkgs.transformers)
          (hsPkgs.comonad)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.plan-applicative)
          ];
        };
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.profunctors)
            (hsPkgs.bifunctors)
            (hsPkgs.streaming)
            (hsPkgs.transformers)
            (hsPkgs.comonad)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }