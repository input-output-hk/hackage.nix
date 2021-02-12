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
      identifier = { name = "limp-cbc"; version = "0.2.8.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "amos.robinson@gmail.com";
      author = "Amos Robinson";
      homepage = "https://github.com/amosr/limp-cbc";
      url = "";
      synopsis = "bindings for integer linear programming solver Coin/CBC";
      description = "very simple binding to external solver, CBC.\nCBC is somewhat faster than GLPK, and also has a more permissive licence.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."limp" or (errorHandler.buildDepError "limp"))
          ];
        libs = [
          (pkgs."Cbc" or (errorHandler.sysDepError "Cbc"))
          (pkgs."Clp" or (errorHandler.sysDepError "Clp"))
          (pkgs."CbcSolver" or (errorHandler.sysDepError "CbcSolver"))
          (pkgs."Cgl" or (errorHandler.sysDepError "Cgl"))
          (pkgs."Osi" or (errorHandler.sysDepError "Osi"))
          (pkgs."OsiCbc" or (errorHandler.sysDepError "OsiCbc"))
          (pkgs."OsiClp" or (errorHandler.sysDepError "OsiClp"))
          (pkgs."OsiCommonTests" or (errorHandler.sysDepError "OsiCommonTests"))
          (pkgs."CoinUtils" or (errorHandler.sysDepError "CoinUtils"))
          (pkgs."CoinMP" or (errorHandler.sysDepError "CoinMP"))
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      };
    }