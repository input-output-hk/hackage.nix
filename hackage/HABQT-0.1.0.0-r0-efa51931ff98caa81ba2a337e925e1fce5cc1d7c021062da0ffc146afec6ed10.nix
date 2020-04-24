{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HABQT"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Leonid Belinsky";
      maintainer = "belinsky.leonid@gmail.com";
      author = "Leonid Belinsky";
      homepage = "https://github.com/Belinsky-L-V/HABQT#readme";
      url = "";
      synopsis = "Hierarchical adaptive Bayesian quantum tomography for quantum bits";
      description = "Extends adaptive Bayesian quantum tomography as described in\n<https://doi.org/10.1103/PhysRevA.85.052120> by using a hierarchical\ndistribution over density matrices of all possible ranks.\n\n\\Includes:\n\n* a Haskell library\n\n* a shared library which provides a C\ninterface to the tomography function\n\n* an executable that simulates\ntomography of random states and outputs infidelity between true states and\nmean Bayesian estimates to a file\n\nPlease refer to @HABQT-simulation \\-\\-help@ for executable usage\ninstructions,\n<https://github.com/Belinsky-L-V/HABQT#readme README on Github>\nfor installation instructions and shared library C ABI description,\naccompanying Haddock documentation for Haskell API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."hmatrix-gsl" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-gsl"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."newtype-generics" or ((hsPkgs.pkgs-errors).buildDepError "newtype-generics"))
          (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."validation" or ((hsPkgs.pkgs-errors).buildDepError "validation"))
          ];
        buildable = true;
        };
      foreignlibs = {
        "HABQT" = {
          depends = [
            (hsPkgs."HABQT" or ((hsPkgs.pkgs-errors).buildDepError "HABQT"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."validation" or ((hsPkgs.pkgs-errors).buildDepError "validation"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      exes = {
        "HABQT-simulation" = {
          depends = [
            (hsPkgs."HABQT" or ((hsPkgs.pkgs-errors).buildDepError "HABQT"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
            ];
          buildable = true;
          };
        };
      tests = {
        "HABQT-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HABQT" or ((hsPkgs.pkgs-errors).buildDepError "HABQT"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."newtype-generics" or ((hsPkgs.pkgs-errors).buildDepError "newtype-generics"))
            ];
          buildable = true;
          };
        };
      };
    }