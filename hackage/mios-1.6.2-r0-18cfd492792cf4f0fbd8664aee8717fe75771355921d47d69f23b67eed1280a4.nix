{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      llvm = false;
      utils = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mios";
        version = "1.6.2";
      };
      license = "GPL-3.0-only";
      copyright = "2017 Shuji Narazaki";
      maintainer = "narazaki@nagasaki-u.ac.jp";
      author = "Shuji Narazaki";
      homepage = "https://github.com/shnarazk/mios";
      url = "";
      synopsis = "A Minisat-based CDCL SAT solver in Haskell";
      description = "A modern and very fast SAT solver written in Haskell, using CDCL, watch literals, VSIDS, blocking-literals, phase saving, LBD, Glucose-like restart and so on. 'Mios' is an abbreviation of 'Minisat-based Implementation and Optimization Study on SAT solver'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "cnf-stat" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.mios)
            (hsPkgs.primitive)
            (hsPkgs.vector)
          ];
        };
        "mios162" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.gitrev)
            (hsPkgs.mios)
            (hsPkgs.primitive)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "mios-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.hspec)
            (hsPkgs.mios)
            (hsPkgs.primitive)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }