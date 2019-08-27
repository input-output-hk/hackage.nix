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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."hmatrix-gsl" or (buildDepError "hmatrix-gsl"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."newtype-generics" or (buildDepError "newtype-generics"))
          (hsPkgs."streaming" or (buildDepError "streaming"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."validation" or (buildDepError "validation"))
          ];
        };
      foreignlibs = {
        "HABQT" = {
          depends = [
            (hsPkgs."HABQT" or (buildDepError "HABQT"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."validation" or (buildDepError "validation"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      exes = {
        "HABQT-simulation" = {
          depends = [
            (hsPkgs."HABQT" or (buildDepError "HABQT"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            ];
          };
        };
      tests = {
        "HABQT-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HABQT" or (buildDepError "HABQT"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."newtype-generics" or (buildDepError "newtype-generics"))
            ];
          };
        };
      };
    }