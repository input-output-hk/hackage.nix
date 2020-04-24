{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "glpk-hs"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jean-Philippe Bernardy <jeanphilippe.bernardy@gmail.com>";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Comprehensive GLPK linear programming bindings";
      description = "Friendly interface to GLPK's linear programming and mixed integer programming features.  Intended for easy extensibility,\nwith a general, pure-Haskell representation of linear programs.  Also includes usefully general algebraic structures.\nTo design a linear programming problem,\nuse \"Control.Monad.LPMonad\" to construct the constraints and specifications.  Linear functions are essentially specified\nas @Data.Map@s from variables to their coefficients, and functions for manipulating them are available in \"Data.LinearProgram.LinExpr\".\nThen \"Data.LinearProgram.GLPK\" provides facilities for using the GLPK solver system on your problem, with a sizable number\nof options available.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."gasp" or ((hsPkgs.pkgs-errors).buildDepError "gasp"))
          ];
        libs = [ (pkgs."glpk" or ((hsPkgs.pkgs-errors).sysDepError "glpk")) ];
        buildable = true;
        };
      };
    }