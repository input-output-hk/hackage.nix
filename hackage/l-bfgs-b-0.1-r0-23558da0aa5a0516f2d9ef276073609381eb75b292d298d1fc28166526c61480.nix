{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "l-bfgs-b"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2013 Gard Spreemann";
      maintainer = "Gard Spreemann <gspreemann@gmail.com>";
      author = "Gard Spreemann";
      homepage = "http://nonempty.org/software/haskell-l-bfgs-b";
      url = "";
      synopsis = "Bindings to L-BFGS-B, Fortran code for limited-memory quasi-Newton bound-constrained optimization";
      description = "Bindings to L-BFGS-B, Fortran code for limited-memory quasi-Newton bound-constrained optimization.\n\nL-BFGS-B is a Fortran library for limited-memory quasi-Newton bound-constrained optimization written\nby Ciyou Zhu, Richard Byrd, Jorge Nocedal and Jose Luis Morales. More information can be found on its\nhomepage <http://users.eecs.northwestern.edu/~nocedal/lbfgsb.html>, or in [1].\n\nThe L-BFGS-B Fortran code is not included in this package, as I consider it a dependency. This package expects to\nbe able to link against version 3.0 of the L-BFGS-B code, as built by a relatively recent version of gfortran.\nInstructions on how to build L-BFGS-B as a shared library\ncan be found at <http://nonempty.org/software/haskell-l-bfgs-b>.\n\nThe functions provided in this package wrap FFI calls in 'unsafePerformIO', which among other things means that\nthe called L-BFGS-B code should not output anything. The relevant @iprint@ flag is thus set negative to suppress\noutput as specified in the L-BFGS-B code. However, there are two places in said code where the flag is ignored\nand output still occurs. If it bothers you that code exposed as pure prints things, see\n<http://nonempty.org/software/haskell-l-bfgs-b> for information on a simple patch for L-BFGS-B. The SciPy project\nhas described the same behavior at <http://projects.scipy.org/scipy/ticket/1742>.\n\nExample on usage can be found in the included @examples@ directiory.\n\nThe current version has only been lightly tested, and should not be trusted for serious work. Feedback is appreciated.\n\nChanges in version 0.1:\n\n* There has only been cursory testing, so do not trust these bindings yet.\n\n* Initial release.\n\n\n\\[1] R. H. Byrd, P. Lu and J. Nocedal. A Limited Memory Algorithm for Bound Constrained Optimization, (1995), SIAM Journal on Scientific and Statistical Computing , 16, 5, pp. 1190-1208.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [
          (pkgs."lbfgsb" or ((hsPkgs.pkgs-errors).sysDepError "lbfgsb"))
          ];
        buildable = true;
        };
      };
    }