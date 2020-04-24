{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "TBit"; version = "0.4.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danielsmw@gmail.com";
      author = "Matthew Daniels";
      homepage = "";
      url = "";
      synopsis = "Utilities for condensed matter physics tight binding calculations.";
      description = "TBit provides tools for parameterizing and computing condensed matter physics quantities based on tight-binding models. It provides utitilies for computing Chern numbers and Berry curvatures of electronic band structure, generating gnuplot-readable dispersion plots, and calculating assorted quantities such as orbital magnetization and Nernst conductivity.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."stream-fusion" or ((hsPkgs.pkgs-errors).buildDepError "stream-fusion"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."integration" or ((hsPkgs.pkgs-errors).buildDepError "integration"))
          (hsPkgs."numeric-tools" or ((hsPkgs.pkgs-errors).buildDepError "numeric-tools"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."list-extras" or ((hsPkgs.pkgs-errors).buildDepError "list-extras"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
          ];
        buildable = true;
        };
      };
    }