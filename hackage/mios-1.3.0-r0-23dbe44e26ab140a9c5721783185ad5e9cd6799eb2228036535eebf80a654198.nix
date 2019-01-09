{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = false; lib = true; };
    package = {
      specVersion = "1.16";
      identifier = { name = "mios"; version = "1.3.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Shuji Narazaki <narazaki@nagasaki-u.ac.jp>";
      author = "Shuji Narazaki <narazaki@nagasaki-u.ac.jp>";
      homepage = "https://github.com/shnarazk/mios";
      url = "";
      synopsis = "A Minisat-based SAT solver in Haskell";
      description = "A modern and fast SAT solver written in Haskell, based on Minisat-1.14 and 2.2.\nBy using CDCL, watch literals, VSIDS, restart, blocking-literals, LBD and so on.\nThe current version is only 2.0 time slower than Minisat-2.2.\n'Mios' is an abbreviation of 'Minisat-based Implementation and Optimization Study on SAT solver'.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
          depends = [
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