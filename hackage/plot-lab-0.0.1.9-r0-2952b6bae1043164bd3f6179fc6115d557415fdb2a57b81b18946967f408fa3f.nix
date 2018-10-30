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
      specVersion = "1.18";
      identifier = {
        name = "plot-lab";
        version = "0.0.1.9";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "sumit.sahrawat.apm13@iitbhu.ac.in";
      author = "Sumit Sahrawat";
      homepage = "https://github.com/sumitsahrawat/plot-lab";
      url = "";
      synopsis = "A plotting tool with Mathematica like Manipulation abilities";
      description = "Mathematica has a nice plotting feature that allows for plotting of functions that depend on more than one variable, and then allows changing the value\nof the extra parameters to see real-time animated changes in the plot. This application attempts to provide the same for 2-D plots for free.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "plot-lab" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.colour)
            (hsPkgs.plot)
            (hsPkgs.gtk)
            (hsPkgs.hmatrix)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }