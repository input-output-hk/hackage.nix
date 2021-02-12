{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "boolector"; version = "0.0.0.8"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        libs = [ (pkgs."boolector" or (errorHandler.sysDepError "boolector")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "API_Usage_Example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boolector" or (errorHandler.buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or (errorHandler.sysDepError "boolector"))
            ];
          buildable = true;
          };
        "Array_Example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boolector" or (errorHandler.buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or (errorHandler.sysDepError "boolector"))
            ];
          buildable = true;
          };
        "UF_Example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boolector" or (errorHandler.buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or (errorHandler.sysDepError "boolector"))
            ];
          buildable = true;
          };
        "Arith_Example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boolector" or (errorHandler.buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or (errorHandler.sysDepError "boolector"))
            ];
          buildable = true;
          };
        "Arith_Example2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boolector" or (errorHandler.buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or (errorHandler.sysDepError "boolector"))
            ];
          buildable = true;
          };
        "Arith_Example3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boolector" or (errorHandler.buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or (errorHandler.sysDepError "boolector"))
            ];
          buildable = true;
          };
        "GetSetSymbol_Example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boolector" or (errorHandler.buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or (errorHandler.sysDepError "boolector"))
            ];
          buildable = true;
          };
        "UF_Example2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boolector" or (errorHandler.buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or (errorHandler.sysDepError "boolector"))
            ];
          buildable = true;
          };
        "Const_Example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boolector" or (errorHandler.buildDepError "boolector"))
            ];
          libs = [
            (pkgs."boolector" or (errorHandler.sysDepError "boolector"))
            ];
          buildable = true;
          };
        };
      };
    }