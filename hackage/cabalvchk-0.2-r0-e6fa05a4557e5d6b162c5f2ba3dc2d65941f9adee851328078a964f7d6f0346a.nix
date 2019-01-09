{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "cabalvchk"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "quick@sparq.org";
      author = "Kevin Quick";
      homepage = "";
      url = "";
      synopsis = "Verify installed package version against user-specified constraints.";
      description = "This utility can be used to verify the version of an installed\npackage against version constraints.  The version constraints can\nbe specified in typical cabal fashion (e.g. >= 8.3, == 0.9.*, >= 8.3 && < 9.0).\n\nUsage: cabalvchk package-name version-constraints [verbose]\n\nNote that the version-constraints will probably need to be enclosed in\nsingle-quotes to prevent the shell from interpreting characters in the\nspecification.\n\nOne use of this utility is by external configuration/validation utilities\n(e.g. autoconf) to verify installed package versions without running a\ncabal build.  This utility produces no output (unless a third argument is\nspecified) and the return value is 0 if the constraints are met or non-zero\nif the constraints are not met (including if the package is not installed).\n\nChanges in 0.2:\n\n* Handles multiple package installations by returning 0 if any of the\ninstalled versions satisfies the constraints.\n";
      buildType = "Simple";
      };
    components = {
      exes = { "cabalvchk" = { depends = [ (hsPkgs.base) (hsPkgs.Cabal) ]; }; };
      };
    }