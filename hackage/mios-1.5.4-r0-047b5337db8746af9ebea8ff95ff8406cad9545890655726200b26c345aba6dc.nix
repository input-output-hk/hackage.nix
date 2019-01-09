{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = false; multiconflict = false; utils = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "mios"; version = "1.5.4"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Shuji Narazaki <narazaki@nagasaki-u.ac.jp>";
      author = "Shuji Narazaki <narazaki@nagasaki-u.ac.jp>";
      homepage = "https://github.com/shnarazk/mios";
      url = "";
      synopsis = "A Minisat-based CDCL SAT solver in Haskell";
      description = "A modern and very fast SAT solver written in Haskell, using CDCL, watch literals, VSIDS,\nblocking-literals, phase saving, LBD, Glucose-like restart and so on.\n'Mios' is an abbreviation of 'Minisat-based Implementation and Optimization Study on SAT solver'.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.ghc-prim)
          (hsPkgs.bytestring)
          (hsPkgs.primitive)
          ];
        };
      exes = {
        "mios-1.5.4" = { depends = [ (hsPkgs.base) (hsPkgs.mios) ]; };
        "cnf-stat" = {
          depends = [ (hsPkgs.base) (hsPkgs.mios) (hsPkgs.bytestring) ];
          };
        "mios-mc" = {
          depends = [ (hsPkgs.base) (hsPkgs.mios) (hsPkgs.bytestring) ];
          };
        "mc-dump2csv" = {
          depends = [ (hsPkgs.base) (hsPkgs.mios) (hsPkgs.bytestring) ];
          };
        "mc-averagecsv" = {
          depends = [ (hsPkgs.base) (hsPkgs.mios) (hsPkgs.bytestring) ];
          };
        "mc-summary" = {
          depends = [ (hsPkgs.base) (hsPkgs.mios) (hsPkgs.bytestring) ];
          };
        "mc-stat2csv" = {
          depends = [ (hsPkgs.base) (hsPkgs.mios) (hsPkgs.bytestring) ];
          };
        "mc-pickup" = {
          depends = [ (hsPkgs.base) (hsPkgs.mios) (hsPkgs.bytestring) ];
          };
        "mc-numbers" = {
          depends = [ (hsPkgs.base) (hsPkgs.mios) (hsPkgs.bytestring) ];
          };
        };
      };
    }