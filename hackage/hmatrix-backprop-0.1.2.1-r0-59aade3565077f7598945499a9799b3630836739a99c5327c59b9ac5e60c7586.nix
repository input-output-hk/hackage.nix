{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hmatrix-backprop"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/hmatrix-backprop#readme";
      url = "";
      synopsis = "hmatrix operations lifted for backprop";
      description = "hmatrix operations lifted for backprop, along with orphan instances.\n\nMeant to act as a drop-in replacement to the API of\nNumeric.LinearAlgebra.Static.  Just change your imports, and your\nfunctions are automatically backpropagatable.\n\nSee README on Github at <https://github.com/mstksg/hmatrix-backprop#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."backprop" or ((hsPkgs.pkgs-errors).buildDepError "backprop"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."finite-typelits" or ((hsPkgs.pkgs-errors).buildDepError "finite-typelits"))
          (hsPkgs."ghc-typelits-knownnat" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."hmatrix-vector-sized" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-vector-sized"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-sized" or ((hsPkgs.pkgs-errors).buildDepError "vector-sized"))
          ];
        buildable = true;
        };
      tests = {
        "hmatrix-backprop-test" = {
          depends = [
            (hsPkgs."backprop" or ((hsPkgs.pkgs-errors).buildDepError "backprop"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."finite-typelits" or ((hsPkgs.pkgs-errors).buildDepError "finite-typelits"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."hmatrix-backprop" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-backprop"))
            (hsPkgs."hmatrix-vector-sized" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-vector-sized"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."microlens-platform" or ((hsPkgs.pkgs-errors).buildDepError "microlens-platform"))
            (hsPkgs."vector-sized" or ((hsPkgs.pkgs-errors).buildDepError "vector-sized"))
            ];
          buildable = true;
          };
        };
      };
    }