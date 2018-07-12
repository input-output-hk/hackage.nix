{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "linearEqSolver";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Levent Erkok, 2012";
        maintainer = "Levent Erkok (erkokl@gmail.com)";
        author = "Levent Erkok";
        homepage = "http://github.com/LeventErkok/linearEqSolver";
        url = "";
        synopsis = "Use SMT solvers to solve linear systems of equations over integers and rationals.";
        description = "Express and solve linear systems of equations over integers and rationals, using an SMT solver to do the actual solving.\nBy default, we use Microsoft's Z3 SMT solver (<http://research.microsoft.com/en-us/um/redmond/projects/z3/>).\n\nlinearEqSolver is hosted at GitHub: <http://github.com/LeventErkok/linearEqSolver>. Comments,\nbug reports, and patches are always welcome.\n\n\nRelease notes can be seen at: <http://github.com/LeventErkok/linearEqSolver/blob/master/RELEASENOTES>.";
        buildType = "Simple";
      };
      components = {
        "linearEqSolver" = {
          depends  = [
            hsPkgs.base
            hsPkgs.sbv
          ];
        };
      };
    }