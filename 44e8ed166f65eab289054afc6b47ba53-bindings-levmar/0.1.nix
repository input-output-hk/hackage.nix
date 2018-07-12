{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bindings-levmar";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2009 Roel van Dijk & Bas van Dijk";
        maintainer = "vandijk.roel@gmail.com, v.dijk.bas@gmail.com";
        author = "Roel van Dijk & Bas van Dijk";
        homepage = "";
        url = "";
        synopsis = "A binding to the C levmar (Levenberg-Marquardt) library";
        description = "The Levenberg-Marquardt algorithm is an iterative\ntechnique that finds a local minimum of a function that\nis expressed as the sum of squares of nonlinear\nfunctions. It has become a standard technique for\nnonlinear least-squares problems and can be thought of\nas a combination of steepest descent and the\nGauss-Newton method. When the current solution is far\nfrom the correct one, the algorithm behaves like a\nsteepest descent method: slow, but guaranteed to\nconverge. When the current solution is close to the\ncorrect solution, it becomes a Gauss-Newton method.\n\nBoth unconstrained and constrained (under linear\nequations and box constraints) Levenberg-Marquardt\nvariants are included.  All functions have Double and\nFloat variants.\n\nSee: <http://www.ics.forth.gr/~lourakis/levmar/>\n\nNote that the included C library is lightly patched to\nmake it pure. This way the functions can be used inside\nunsafePerformIO.\n\nA note regarding the license:\n\nAll files EXCEPT those in the levmar-2.4 directory fall\nunder the BSD3 license. The levmar C library, which is\nbundled with this binding, falls under the GPL. If you\nbuild a program which is linked with this binding then\nit is also linked with levmar. This means such a\nprogram can only by distributed under the terms of the\nGPL.";
        buildType = "Simple";
      };
      components = {
        "bindings-levmar" = {
          depends  = [ hsPkgs.base ];
          pkgconfig = [
            pkgconfPkgs.lapack
          ];
        };
      };
    }