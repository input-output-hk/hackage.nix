{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pqc"; version = "0.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Don Stewart 2006-2007, shelarcy 2011-2012";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Don Stewart";
      homepage = "http://darcsden.com/shelarcy/pqc";
      url = "";
      synopsis = "Parallel batch driver for QuickCheck";
      description = "Parallel batch driver for QuickCheck";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.QuickCheck)
            ]
          else [ (hsPkgs.base) (hsPkgs.stm) (hsPkgs.QuickCheck) ];
        };
      tests = {
        "Example" = {
          depends = [ (hsPkgs.base) (hsPkgs.pqc) (hsPkgs.ChasingBottoms) ];
          };
        };
      };
    }