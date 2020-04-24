{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "calculator"; version = "0.4.1.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "sumit.sahrawat.apm13@iitbhu.ac.in";
      author = "Sumit Sahrawat";
      homepage = "https://github.com/sumitsahrawat/calculator";
      url = "";
      synopsis = "A calculator repl, with variables, functions & Mathematica like dynamic plots.";
      description = "A calculator repl that processes mathematical expressions.\nDoes basic arithmetic, and provides pre-defined basic mathematical functions.\n\nProvides binding functionality for variables and functions, and plotting support for functions with arbitrary number of arguments.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "calculator" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."plot-gtk-ui" or ((hsPkgs.pkgs-errors).buildDepError "plot-gtk-ui"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        };
      tests = {
        "model-test-arithmetic" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }