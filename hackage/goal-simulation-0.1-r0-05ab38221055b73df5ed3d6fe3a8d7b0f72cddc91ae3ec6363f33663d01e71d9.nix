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
      specVersion = "1.10";
      identifier = { name = "goal-simulation"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sokolo@mis.mpg.de";
      author = "Sacha Sokoloski";
      homepage = "";
      url = "";
      synopsis = "Mealy based simulation tools";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
          (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
          (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
        ];
        buildable = true;
      };
      exes = {
        "rk4" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-simulation" or (errorHandler.buildDepError "goal-simulation"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "markov-chain" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."goal-simulation" or (errorHandler.buildDepError "goal-simulation"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
          buildable = true;
        };
        "ito-process" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."goal-simulation" or (errorHandler.buildDepError "goal-simulation"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
          buildable = true;
        };
        "pendulum-vector-field" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or (errorHandler.buildDepError "goal-simulation"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "pendulum-simulation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or (errorHandler.buildDepError "goal-simulation"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "pendulum-filter-histogram" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or (errorHandler.buildDepError "goal-simulation"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
        "pendulum-filter-simulation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or (errorHandler.buildDepError "goal-simulation"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
        "pendulum-filter-train" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or (errorHandler.buildDepError "goal-simulation"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
        "pendulum-filter-code" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goal-core" or (errorHandler.buildDepError "goal-core"))
            (hsPkgs."goal-geometry" or (errorHandler.buildDepError "goal-geometry"))
            (hsPkgs."goal-probability" or (errorHandler.buildDepError "goal-probability"))
            (hsPkgs."goal-simulation" or (errorHandler.buildDepError "goal-simulation"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }