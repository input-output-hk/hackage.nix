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
      specVersion = "3.6";
      identifier = { name = "bearlibterminal"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2024-2025 Avery";
      maintainer = "Avery <ppkfs@outlook.com>";
      author = "Avery";
      homepage = "https://github.com/PPKFS/bearlibterminal-hs";
      url = "";
      synopsis = "Low-level Haskell bindings to the BearLibTerminal graphics library.";
      description = "A Haskell wrapper for a graphics library for making roguelike-style games, with a terminal-like window facilitating flexible textual output and\nuncomplicated input processing. For more information and a design overview, please see the original documentation here: http://foo.wyrd.name/en:bearlibterminal.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        libs = [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."BearLibTerminal" or (errorHandler.sysDepError "BearLibTerminal"))
        ];
        buildable = true;
      };
      exes = {
        "omni" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bearlibterminal" or (errorHandler.buildDepError "bearlibterminal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          ];
          buildable = true;
        };
      };
    };
  }