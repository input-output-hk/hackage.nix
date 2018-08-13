{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      llvm = false;
      utils = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mios";
        version = "1.6.0";
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
      "mios" = {
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
        "mios-1.6.0" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.mios)
            (hsPkgs.primitive)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }