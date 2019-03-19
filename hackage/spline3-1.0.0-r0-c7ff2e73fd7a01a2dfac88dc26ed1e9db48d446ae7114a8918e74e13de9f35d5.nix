{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "spline3"; version = "1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "http://michael.orlitzky.com/code/spline3.xhtml";
      url = "";
      synopsis = "A parallel implementation of the Sorokina/Zeilfelder spline scheme.";
      description = "Interpolate volumetric data according to \"Local quasi-interpolation\nby cubic C^1 splines on type-6 tetrahedral partitions.\" The defaults\nare tailored to the MRI data contained in data/mri.bin from the\nStanford volume data archive at <http://graphics.stanford.edu/data/voldata/>.\n\nFor more information and examples, please see the project homepage at\n<http://michael.orlitzky.com/code/spline3.xhtml>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "spline3" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.filepath)
            (hsPkgs.MissingH)
            (hsPkgs.repa)
            (hsPkgs.repa-algorithms)
            (hsPkgs.repa-io)
            (hsPkgs.vector)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      tests = {
        "doctests" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        "testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.filepath)
            (hsPkgs.MissingH)
            (hsPkgs.repa)
            (hsPkgs.repa-algorithms)
            (hsPkgs.repa-io)
            (hsPkgs.vector)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }