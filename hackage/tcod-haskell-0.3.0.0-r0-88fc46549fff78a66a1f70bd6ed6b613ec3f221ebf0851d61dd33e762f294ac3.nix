{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."inline-c" or ((hsPkgs.pkgs-errors).buildDepError "inline-c"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = (pkgs.lib).optional (!flags.use-pkg-config) (pkgs."tcod" or ((hsPkgs.pkgs-errors).sysDepError "tcod"));
        pkgconfig = (pkgs.lib).optional (flags.use-pkg-config) (pkgconfPkgs."libtcod" or ((hsPkgs.pkgs-errors).pkgConfDepError "libtcod"));
        buildable = true;
        };
      exes = {
        "tcod-haskell-sample01" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tcod-haskell" or ((hsPkgs.pkgs-errors).buildDepError "tcod-haskell"))
            ];
          libs = [ (pkgs."tcod" or ((hsPkgs.pkgs-errors).sysDepError "tcod")) ];
          buildable = if flags.examples then true else false;
          };
        "tcod-haskell-sample02" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tcod-haskell" or ((hsPkgs.pkgs-errors).buildDepError "tcod-haskell"))
            ];
          libs = [ (pkgs."tcod" or ((hsPkgs.pkgs-errors).sysDepError "tcod")) ];
          buildable = if flags.examples then true else false;
          };
        "tcod-haskell-sample03" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tcod-haskell" or ((hsPkgs.pkgs-errors).buildDepError "tcod-haskell"))
            ];
          libs = [ (pkgs."tcod" or ((hsPkgs.pkgs-errors).sysDepError "tcod")) ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }