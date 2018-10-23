{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "glpk-hs";
        version = "0.3.5";
      };
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
      "glpk-hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.deepseq)
        ];
        libs = [ (pkgs."glpk") ];
      };
    };
  }