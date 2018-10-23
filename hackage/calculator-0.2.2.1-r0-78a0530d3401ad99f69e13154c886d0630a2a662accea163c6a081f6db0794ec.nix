{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "calculator";
        version = "0.2.2.1";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "sumit.sahrawat.apm13@itbhu.ac.in";
      author = "Sumit Sahrawat";
      homepage = "https://github.com/sumitsahrawat/calculator";
      url = "";
      synopsis = "A calculator repl.";
      description = "A calculator repl that processes mathematical expressions.\nDoes basic arithmetic, and provides pre-defined basic mathematical functions.\nProvides binding functionality for variables and functions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "calculator" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.haskeline)
            (hsPkgs.parsec)
          ];
        };
      };
      tests = {
        "model-test-arithmetic" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }