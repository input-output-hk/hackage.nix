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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tcod-haskell"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/ncrashed/tcod-haskell#readme";
      url = "";
      synopsis = "Bindings to libtcod roguelike engine";
      description = "Haskell bindings for popular library for making roguelike games";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
      ];
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
        libs = [ (pkgs."tcod" or (errorHandler.sysDepError "tcod")) ];
        buildable = true;
      };
      exes = {
        "tcod-haskell-sample01" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tcod-haskell" or (errorHandler.buildDepError "tcod-haskell"))
          ];
          buildable = if flags.examples then true else false;
        };
        "tcod-haskell-sample02" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tcod-haskell" or (errorHandler.buildDepError "tcod-haskell"))
          ];
          buildable = if flags.examples then true else false;
        };
        "tcod-haskell-sample03" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tcod-haskell" or (errorHandler.buildDepError "tcod-haskell"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
    };
  }