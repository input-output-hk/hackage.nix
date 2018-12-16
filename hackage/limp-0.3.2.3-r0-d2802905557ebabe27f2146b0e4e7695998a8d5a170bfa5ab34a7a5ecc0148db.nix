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
        name = "limp";
        version = "0.3.2.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "amos.robinson@gmail.com";
      author = "Amos Robinson";
      homepage = "https://github.com/amosr/limp";
      url = "";
      synopsis = "representation of Integer Linear Programs";
      description = "This package provides two representations for linear programs: \"Numeric.Limp.Program\", which is what I expect end-users to use, and\n\"Numeric.Limp.Canon\", which is simpler, but would be less nice for writing linear programs.\nYou can convert programs from the Program representation to the Canon representation using \"Numeric.Limp.Canon.Convert\", and then pretty-print the program using \"Numeric.Limp.Canon.Pretty\".\nThere is a very simple branch-and-bound solver in \"Numeric.Limp.Solve.Branch.Simple\", and a simplex solver for relaxed (real only) programs in \"Numeric.Limp.Solve.Simplex.Maps\".\nSee the limp-cbc package for a simple external solver.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-th)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.limp)
          ];
        };
      };
    };
  }