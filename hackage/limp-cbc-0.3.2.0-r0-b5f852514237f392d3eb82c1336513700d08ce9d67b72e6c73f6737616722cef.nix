{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { embedded = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "limp-cbc"; version = "0.3.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "amos.robinson@gmail.com";
      author = "Amos Robinson";
      homepage = "https://github.com/amosr/limp-cbc";
      url = "";
      synopsis = "bindings for integer linear programming solver Coin/CBC";
      description = "very simple binding to external solver, CBC.\nCBC is somewhat faster than GLPK, and also has a more permissive licence.\nrelies on coin/cbc version 2.8.6.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."limp" or ((hsPkgs.pkgs-errors).buildDepError "limp"))
          ];
        libs = if !flags.embedded
          then [
            (pkgs."Cbc" or ((hsPkgs.pkgs-errors).sysDepError "Cbc"))
            (pkgs."Clp" or ((hsPkgs.pkgs-errors).sysDepError "Clp"))
            (pkgs."CbcSolver" or ((hsPkgs.pkgs-errors).sysDepError "CbcSolver"))
            (pkgs."Cgl" or ((hsPkgs.pkgs-errors).sysDepError "Cgl"))
            (pkgs."Osi" or ((hsPkgs.pkgs-errors).sysDepError "Osi"))
            (pkgs."OsiCbc" or ((hsPkgs.pkgs-errors).sysDepError "OsiCbc"))
            (pkgs."OsiClp" or ((hsPkgs.pkgs-errors).sysDepError "OsiClp"))
            (pkgs."OsiCommonTests" or ((hsPkgs.pkgs-errors).sysDepError "OsiCommonTests"))
            (pkgs."CoinUtils" or ((hsPkgs.pkgs-errors).sysDepError "CoinUtils"))
            (pkgs."CoinMP" or ((hsPkgs.pkgs-errors).sysDepError "CoinMP"))
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ]
          else [
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."limp" or ((hsPkgs.pkgs-errors).buildDepError "limp"))
            (hsPkgs."limp-cbc" or ((hsPkgs.pkgs-errors).buildDepError "limp-cbc"))
            ];
          buildable = true;
          };
        };
      };
    }