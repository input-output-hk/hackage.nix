{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "boolector"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Deian Stefan <deian@cs.ucsd.edu>";
      author = "Dein Stefan, Johannes Waldmann, Armin Biere";
      homepage = "https://github.com/plsyssec/haskell-boolector";
      url = "";
      synopsis = "Haskell bindings for the Boolector SMT solver";
      description = "This library provides a high-level, monadic DSL for writing symbolic\ncomputations atop the Boolector SMT solver (<https://github.com/Boolector/boolector>).\n\nThe API and its description is defined in the \"Boolector\" module.\n\nSeveral examples can be found at: <https://github.com/PLSysSec/haskell-boolector/tree/master/test>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        libs = [
          (pkgs."boolector" or ((hsPkgs.pkgs-errors).sysDepError "boolector"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "API_Usage_Example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."boolector" or ((hsPkgs.pkgs-errors).buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or ((hsPkgs.pkgs-errors).sysDepError "boolector"))
            ];
          buildable = true;
          };
        "Array_Example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."boolector" or ((hsPkgs.pkgs-errors).buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or ((hsPkgs.pkgs-errors).sysDepError "boolector"))
            ];
          buildable = true;
          };
        "UF_Example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."boolector" or ((hsPkgs.pkgs-errors).buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or ((hsPkgs.pkgs-errors).sysDepError "boolector"))
            ];
          buildable = true;
          };
        "Arith_Example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."boolector" or ((hsPkgs.pkgs-errors).buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or ((hsPkgs.pkgs-errors).sysDepError "boolector"))
            ];
          buildable = true;
          };
        "GetSetSymbol_Example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."boolector" or ((hsPkgs.pkgs-errors).buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or ((hsPkgs.pkgs-errors).sysDepError "boolector"))
            ];
          buildable = true;
          };
        };
      };
    }