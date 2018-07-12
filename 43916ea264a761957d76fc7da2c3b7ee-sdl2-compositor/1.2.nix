{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sdl2-compositor";
          version = "1.2";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2015  Sebastian Jordan";
        maintainer = "sebastian.jordan.mail@googlemail.com";
        author = "Sebastian Jordan";
        homepage = "";
        url = "";
        synopsis = "image compositing with sdl2 - declarative style";
        description = "This package provides tools for simple image composition\nthrough the means of the SDL library, version 2.  You can\ncombine, translate, rotate, blend, modulate colors and\ndraw in a declarative way.";
        buildType = "Simple";
      };
      components = {
        "sdl2-compositor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.sdl2
            hsPkgs.transformers
            hsPkgs.linear
            hsPkgs.sdl2-ttf
            hsPkgs.stm
            hsPkgs.lrucache
            hsPkgs.text
            hsPkgs.QuickCheck
            hsPkgs.lens
            hsPkgs.StateVar
          ];
        };
        exes = {
          "sdl2-comp-example" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.sdl2
              hsPkgs.stm
              hsPkgs.lrucache
              hsPkgs.sdl2-ttf
              hsPkgs.linear
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.lens
              hsPkgs.StateVar
            ];
          };
          "sdl2-comp-res-independent" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.sdl2
              hsPkgs.stm
              hsPkgs.lrucache
              hsPkgs.sdl2-ttf
              hsPkgs.linear
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.lens
              hsPkgs.StateVar
            ];
          };
        };
      };
    }