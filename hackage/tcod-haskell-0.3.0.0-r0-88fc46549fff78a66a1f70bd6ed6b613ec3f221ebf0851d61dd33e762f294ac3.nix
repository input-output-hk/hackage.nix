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
    flags = { examples = false; use-pkg-config = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tcod-haskell"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/ncrashed/tcod-haskell#readme";
      url = "";
      synopsis = "Bindings to libtcod roguelike engine";
      description = "Haskell bindings for popular library for making roguelike games";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = pkgs.lib.optional (!flags.use-pkg-config) (pkgs."tcod" or (errorHandler.sysDepError "tcod"));
        pkgconfig = pkgs.lib.optional (flags.use-pkg-config) (pkgconfPkgs."libtcod" or (errorHandler.pkgConfDepError "libtcod"));
        buildable = true;
      };
      exes = {
        "tcod-haskell-sample01" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tcod-haskell" or (errorHandler.buildDepError "tcod-haskell"))
          ];
          libs = [ (pkgs."tcod" or (errorHandler.sysDepError "tcod")) ];
          buildable = if flags.examples then true else false;
        };
        "tcod-haskell-sample02" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tcod-haskell" or (errorHandler.buildDepError "tcod-haskell"))
          ];
          libs = [ (pkgs."tcod" or (errorHandler.sysDepError "tcod")) ];
          buildable = if flags.examples then true else false;
        };
        "tcod-haskell-sample03" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tcod-haskell" or (errorHandler.buildDepError "tcod-haskell"))
          ];
          libs = [ (pkgs."tcod" or (errorHandler.sysDepError "tcod")) ];
          buildable = if flags.examples then true else false;
        };
      };
    };
  }