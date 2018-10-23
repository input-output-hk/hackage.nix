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
        name = "tasty-program";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Jan Stolarek, 2014";
      maintainer = "jan.stolarek@p.lodz.pl";
      author = "Jan Stolarek";
      homepage = "https://github.com/jstolarek/tasty-program";
      url = "";
      synopsis = "Use tasty framework to test whether a program executes correctly";
      description = "This package provides a function that extends\n<http://hackage.haskell.org/package/tasty tasty> testing\nframework with capability to test whether an external\nprogram runs successfully. This package is inspired by\n<http://hackage.haskell.org/package/test-framework-program test-framework-program>\npackage by Adam Wick.\ntasty-program provides basic functionality of\nrunning a program with specified set of command\nline parameters, and optionally a working\ndirectory, and checking the exit code. Program's\noutput and error streams are ignored.";
      buildType = "Simple";
    };
    components = {
      "tasty-program" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.tasty)
        ];
      };
    };
  }