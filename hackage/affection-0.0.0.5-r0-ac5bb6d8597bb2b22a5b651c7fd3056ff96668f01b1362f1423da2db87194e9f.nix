{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "affection";
        version = "0.0.0.5";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "nek0@chelnok.de";
      author = "nek0";
      homepage = "https://github.com/nek0/affection#readme";
      url = "";
      synopsis = "A simple Game Engine using SDL";
      description = "This package contains Affection, a simple game engine\nwritten in Haskell using SDL and GEGL.\nThis Engine is still work in progress and even minor\nversion bumps may contain breaking api changes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.sdl2)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.gegl)
          (hsPkgs.babl)
          (hsPkgs.monad-loops)
          (hsPkgs.containers)
          (hsPkgs.clock)
          (hsPkgs.glib)
        ];
      };
      exes = {
        "example00" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.affection)
            (hsPkgs.sdl2)
            (hsPkgs.gegl)
            (hsPkgs.babl)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
        "example01" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.affection)
            (hsPkgs.sdl2)
            (hsPkgs.gegl)
            (hsPkgs.babl)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
        "example02" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.affection)
            (hsPkgs.sdl2)
            (hsPkgs.gegl)
            (hsPkgs.babl)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
        "example03" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.affection)
            (hsPkgs.sdl2)
            (hsPkgs.gegl)
            (hsPkgs.babl)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.random)
          ];
        };
      };
    };
  }