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
      specVersion = "1.8";
      identifier = { name = "TBit"; version = "0.4.2.1"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."integration" or (errorHandler.buildDepError "integration"))
          (hsPkgs."numeric-tools" or (errorHandler.buildDepError "numeric-tools"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."list-extras" or (errorHandler.buildDepError "list-extras"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          ];
        buildable = true;
        };
      };
    }