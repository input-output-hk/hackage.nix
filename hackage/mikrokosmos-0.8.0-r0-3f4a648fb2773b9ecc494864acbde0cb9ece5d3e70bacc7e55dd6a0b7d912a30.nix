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
      specVersion = "1.10";
      identifier = {
        name = "mikrokosmos";
        version = "0.8.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "mromang08+github@gmail.com";
      author = "Mario Román (mroman42)";
      homepage = "https://github.com/mroman42/mikrokosmos";
      url = "";
      synopsis = "Lambda calculus interpreter";
      description = "A didactic untyped lambda calculus interpreter.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mikrokosmos" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.haskeline)
            (hsPkgs.parsec)
            (hsPkgs.ansi-terminal)
            (hsPkgs.multimap)
            (hsPkgs.HUnit)
            (hsPkgs.options)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-golden)
            (hsPkgs.directory)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.haskeline)
            (hsPkgs.parsec)
            (hsPkgs.ansi-terminal)
            (hsPkgs.multimap)
            (hsPkgs.HUnit)
            (hsPkgs.options)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.directory)
            (hsPkgs.process)
          ];
        };
      };
    };
  }