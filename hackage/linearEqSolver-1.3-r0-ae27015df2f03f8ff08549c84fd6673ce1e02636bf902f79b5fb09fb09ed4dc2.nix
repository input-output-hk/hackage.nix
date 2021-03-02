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
      identifier = { name = "linearEqSolver"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok, 2012-2013";
      maintainer = "Levent Erkok (erkokl@gmail.com)";
      author = "Levent Erkok";
      homepage = "http://github.com/LeventErkok/linearEqSolver";
      url = "";
      synopsis = "Use SMT solvers to solve linear systems over integers and rationals";
      description = "Solve linear systems of equations over integers and rationals, using an SMT solver.\n\nlinearEqSolver is hosted at GitHub: <http://github.com/LeventErkok/linearEqSolver>. Comments,\nbug reports, and patches are always welcome.\n\n\nRelease notes can be seen at: <http://github.com/LeventErkok/linearEqSolver/blob/master/RELEASENOTES>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"))
          ];
        buildable = true;
        };
      };
    }