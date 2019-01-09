{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pi-forall"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2016 University of Pennsylvania";
      maintainer = "Stephanie Weirich <sweirich@cis.upenn.edu>";
      author = "Stephanie Weirich <sweirich@cis.upenn.edu>, based on code by Trellys Team <trellys@...>";
      homepage = "https://github.com/sweirich/pi-forall";
      url = "";
      synopsis = "Demo implementation of typechecker for dependently-typed language";
      description = "An implementation of a simple dependently typed language for OPLSS 2013";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.unbound-generics)
          (hsPkgs.transformers)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          ];
        };
      exes = {
        "pi-forall" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.unbound-generics)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }