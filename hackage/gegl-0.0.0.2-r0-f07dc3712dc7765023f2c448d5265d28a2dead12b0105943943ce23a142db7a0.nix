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
        name = "gegl";
        version = "0.0.0.2";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "nek0@nek0.eu";
      author = "nek0";
      homepage = "https://github.com/nek0/gegl#readme";
      url = "";
      synopsis = "Haskell bindings to GEGL library";
      description = "This package contains the Haskell bindings to the GEGL\nlibrary.\nThis library is still work in progress. This means that\neven minor version bumps may contain API breaking changes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.inline-c)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.template-haskell)
          (hsPkgs.split)
          (hsPkgs.monad-loops)
          (hsPkgs.glib)
          (hsPkgs.babl)
        ];
        libs = [ (pkgs."gegl-0.3") ];
        pkgconfig = [
          (pkgconfPkgs.gegl-0.3)
        ];
      };
      exes = {
        "example00" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.gegl)
          ];
        };
        "example01" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.SDL)
            (hsPkgs.gegl)
            (hsPkgs.babl)
            (hsPkgs.linear)
            (hsPkgs.monad-loops)
          ];
        };
        "example02" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.sdl2)
            (hsPkgs.gegl)
            (hsPkgs.babl)
            (hsPkgs.monad-loops)
          ];
        };
      };
    };
  }