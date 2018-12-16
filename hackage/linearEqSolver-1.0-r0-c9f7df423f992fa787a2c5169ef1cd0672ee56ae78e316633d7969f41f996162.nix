{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "linearEqSolver";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok, 2012";
      maintainer = "Levent Erkok (erkokl@gmail.com)";
      author = "Levent Erkok";
      homepage = "http://github.com/LeventErkok/linearEqSolver";
      url = "";
      synopsis = "Solve linear systems of equations over integers.";
      description = "Express and solve linear systems of equations over integers, using an SMT solver to do the actual solving.\nBy default, we use Microsoft's Z3 SMT solver (<http://research.microsoft.com/en-us/um/redmond/projects/z3/>).\n\nYou can get a single solution if it exists. Or ask for all possible solutions for underspecified\nsystems, which will be lazily returned in a list.\n\nlinearEqSolver is hosted at GitHub: <http://github.com/LeventErkok/linearEqSolver>. Comments,\nbug reports, and patches are always welcome.\n\n\nRelease notes can be seen at: <http://github.com/LeventErkok/linearEqSolver/blob/master/RELEASENOTES>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.sbv)
        ];
      };
    };
  }