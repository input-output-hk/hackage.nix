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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        buildable = true;
        };
      exes = {
        "mios-1.5.4" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mios" or ((hsPkgs.pkgs-errors).buildDepError "mios"))
            ];
          buildable = true;
          };
        "cnf-stat" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mios" or ((hsPkgs.pkgs-errors).buildDepError "mios"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = if flags.utils then true else false;
          };
        "mios-mc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mios" or ((hsPkgs.pkgs-errors).buildDepError "mios"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = if flags.multiconflict then true else false;
          };
        "mc-dump2csv" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mios" or ((hsPkgs.pkgs-errors).buildDepError "mios"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = if flags.multiconflict && flags.utils
            then true
            else false;
          };
        "mc-averagecsv" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mios" or ((hsPkgs.pkgs-errors).buildDepError "mios"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = if flags.multiconflict && flags.utils
            then true
            else false;
          };
        "mc-summary" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mios" or ((hsPkgs.pkgs-errors).buildDepError "mios"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = if flags.multiconflict && flags.utils
            then true
            else false;
          };
        "mc-stat2csv" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mios" or ((hsPkgs.pkgs-errors).buildDepError "mios"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = if flags.multiconflict && flags.utils
            then true
            else false;
          };
        "mc-pickup" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mios" or ((hsPkgs.pkgs-errors).buildDepError "mios"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = if flags.multiconflict && flags.utils
            then true
            else false;
          };
        "mc-numbers" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mios" or ((hsPkgs.pkgs-errors).buildDepError "mios"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = if flags.multiconflict && flags.utils
            then true
            else false;
          };
        };
      };
    }