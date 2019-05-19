{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.inline-c)
          (hsPkgs.repa)
          (hsPkgs.sdl2)
          (hsPkgs.vector)
          ];
        libs = [ (pkgs."tcod") ];
        };
      exes = {
        "tcod-haskell-sample01" = {
          depends = [ (hsPkgs.base) (hsPkgs.tcod-haskell) ];
          };
        "tcod-haskell-sample02" = {
          depends = [ (hsPkgs.base) (hsPkgs.tcod-haskell) ];
          };
        "tcod-haskell-sample03" = {
          depends = [ (hsPkgs.base) (hsPkgs.tcod-haskell) ];
          };
        };
      };
    }