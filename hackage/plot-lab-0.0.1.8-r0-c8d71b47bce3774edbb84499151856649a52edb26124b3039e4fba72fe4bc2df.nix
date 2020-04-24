{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "plot-lab"; version = "0.0.1.8"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "sumit.sahrawat.apm13 <at> iitbhu <dot> ac <dot> in";
      author = "Sumit Sahrawat";
      homepage = "github.com/sumitsahrawat/plot-lab";
      url = "";
      synopsis = "A plotting tool with Mathematica like Manipulation abilities";
      description = "Mathematica has a nice plotting feature that allows for plotting of functions that depend on more than one variable, and then allows changing the value\nof the extra parameters to see real-time animated changes in the plot. This application attempts to provide the same for 2-D plots for free.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "plot-lab" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
            (hsPkgs."plot" or ((hsPkgs.pkgs-errors).buildDepError "plot"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }