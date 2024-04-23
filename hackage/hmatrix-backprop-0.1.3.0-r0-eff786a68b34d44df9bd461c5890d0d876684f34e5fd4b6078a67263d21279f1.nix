{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hmatrix-backprop"; version = "0.1.3.0"; };
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
          (hsPkgs."backprop" or (errorHandler.buildDepError "backprop"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."hmatrix-vector-sized" or (errorHandler.buildDepError "hmatrix-vector-sized"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
        ];
        buildable = true;
      };
      tests = {
        "hmatrix-backprop-test" = {
          depends = [
            (hsPkgs."backprop" or (errorHandler.buildDepError "backprop"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."hmatrix-backprop" or (errorHandler.buildDepError "hmatrix-backprop"))
            (hsPkgs."hmatrix-vector-sized" or (errorHandler.buildDepError "hmatrix-vector-sized"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          ];
          buildable = true;
        };
      };
    };
  }