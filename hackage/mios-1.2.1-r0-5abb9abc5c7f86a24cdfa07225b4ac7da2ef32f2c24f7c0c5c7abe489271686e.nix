{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.16";
      identifier = {
        name = "mios";
        version = "1.2.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Shuji Narazaki <narazaki@nagasaki-u.ac.jp>";
      author = "Shuji Narazaki <narazaki@nagasaki-u.ac.jp>";
      homepage = "https://github.com/shnarazk/mios";
      url = "";
      synopsis = "A Minisat-based SAT solver in Haskell";
      description = "A modern and fast SAT solver written in Haskell, based on Minisat-1.14 and 2.2.\nBy using CDCL, watch literals, VSIDS, restart, blocking-literals, LBD and so on,\nthe current version is only 1.8 time slower than Minisat-1.14.\n\"Mios\" is an abbreviation of /Minisat-based Implementation and Optimization Study on SAT solver/.\n";
      buildType = "Simple";
    };
    components = {
      "mios" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.bytestring)
          (hsPkgs.primitive)
        ];
      };
      exes = {
        "mios" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.containers)
            (hsPkgs.ghc-prim)
            (hsPkgs.bytestring)
            (hsPkgs.primitive)
          ];
        };
      };
    };
  }