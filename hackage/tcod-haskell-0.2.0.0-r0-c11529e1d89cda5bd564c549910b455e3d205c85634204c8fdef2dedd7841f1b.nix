{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; use-pkg-config = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tcod-haskell"; version = "0.2.0.0"; };
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
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.inline-c)
          (hsPkgs.repa)
          (hsPkgs.sdl2)
          (hsPkgs.vector)
          ];
        libs = (pkgs.lib).optional (!flags.use-pkg-config) (pkgs."tcod");
        pkgconfig = (pkgs.lib).optional (flags.use-pkg-config) (pkgconfPkgs.libtcod);
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