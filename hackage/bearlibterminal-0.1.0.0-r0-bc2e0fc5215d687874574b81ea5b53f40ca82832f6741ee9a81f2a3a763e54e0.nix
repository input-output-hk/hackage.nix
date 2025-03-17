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
      identifier = { name = "bearlibterminal"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2024-2025 Avery";
      maintainer = "Avery <ppkfs@outlook.com>";
      author = "Avery";
      homepage = "https://github.com/PPKFS/bearlibterminal-hs";
      url = "";
      synopsis = "Low-level Haskell bindings to the BearLibTerminal graphics library.";
      description = "A Haskell wrapper for a graphics library for making roguelike-style games.\nFrom the [BearLibTerminal documentation](http://foo.wyrd.name/en:bearlibterminal):\n  BearLibTerminal is a library that creates a terminal-like window facilitating flexible textual output and uncomplicated input processing.\n  A lot of roguelike games intentionally use aesthetic textual or pseudographic visual style. However, native output via the command line\n  interface usually has a few annoying shortcomings such as low speed or palette and font restrictions.\n  Using an extended character set (several languages at once or complicated pseudographics) may also be tricky. BearLibTerminal solves\n  that by providing its own window with a grid of character cells and simple yet powerful API for configuration and textual output.";
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