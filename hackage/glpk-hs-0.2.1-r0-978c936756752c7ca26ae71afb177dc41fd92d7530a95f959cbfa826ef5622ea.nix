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
      specVersion = "1.2";
      identifier = { name = "glpk-hs"; version = "0.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Louis Wasserman <wasserman.louis@gmail.com>";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Comprehensive GLPK linear programming bindings";
      description = "Friendly interface to GLPK's linear programming and mixed integer programming features.  Intended for easy extensibility,\nwith a general, pure-Haskell representation of linear programs.  Also includes usefully general algebraic structures.\nTo design a linear programming problem,\nuse \"Data.LinearProgram.LPMonad\" to construct the constraints and specifications.  Linear functions are essentially specified\nas @Data.Map@s from variables to their coefficients, and functions for manipulating them are available in \"Data.LinFunc\".\nThen \"Data.LinearProgram.GLPK\" provides facilities for using the GLPK solver system on your problem, with a sizable number\nof options available.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        libs = [ (pkgs."glpk" or (errorHandler.sysDepError "glpk")) ];
        buildable = true;
        };
      };
    }