{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "linearEqSolver"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok, 2012-2017";
      maintainer = "Levent Erkok (erkokl@gmail.com)";
      author = "Levent Erkok";
      homepage = "http://github.com/LeventErkok/linearEqSolver";
      url = "";
      synopsis = "Use SMT solvers to solve linear systems over integers and rationals";
      description = "Solve linear systems of equations over integers and rationals, using an SMT solver.\n\nlinearEqSolver is hosted at GitHub: <http://github.com/LeventErkok/linearEqSolver>. Comments,\nbug reports, and patches are always welcome.\n\n\nRelease notes can be seen at: <http://github.com/LeventErkok/linearEqSolver/blob/master/CHANGES.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."sbv" or ((hsPkgs.pkgs-errors).buildDepError "sbv"))
          ];
        buildable = true;
        };
      };
    }