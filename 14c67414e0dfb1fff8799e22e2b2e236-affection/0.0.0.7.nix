{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      verbose = false;
      debug = false;
      warn = false;
      error = false;
      examples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "affection";
        version = "0.0.0.7";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "nek0@chelnok.de";
      author = "nek0";
      homepage = "https://github.com/nek0/affection#readme";
      url = "";
      synopsis = "A simple Game Engine using SDL";
      description = "This package contains Affection, a simple game engine\nwritten in Haskell using SDL.\nThis Engine is still work in progress and even minor\nversion bumps may contain breaking api changes.";
      buildType = "Simple";
    };
    components = {
      "affection" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.sdl2)
          (hsPkgs.linear)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.monad-loops)
          (hsPkgs.monad-parallel)
          (hsPkgs.containers)
          (hsPkgs.clock)
          (hsPkgs.glib)
          (hsPkgs.bytestring)
          (hsPkgs.OpenGL)
          (hsPkgs.stm)
          (hsPkgs.uuid)
        ];
      };
      exes = {
        "example00" = {
          depends  = pkgs.lib.optionals (_flags.examples) [
            (hsPkgs.base)
            (hsPkgs.affection)
            (hsPkgs.sdl2)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }