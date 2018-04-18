{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
      opengl-example = false;
      no-linear = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sdl2";
          version = "2.1.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2013-2017  Gabríel Arthúr Pétursson";
        maintainer = "gabriel@system.is, ollie@ocharles.org.uk";
        author = "Gabríel Arthúr Pétursson, Oliver Charles";
        homepage = "";
        url = "";
        synopsis = "Both high- and low-level bindings to the SDL library (version 2.0.2+).";
        description = "This package contains bindings to the SDL 2 library, in both high- and\nlow-level forms:\n\nThe 'SDL' namespace contains high-level bindings, where enumerations are split\ninto sum types, and we perform automatic error-checking.\n\nThe 'SDL.Raw' namespace contains an almost 1-1 translation of the C API into\nHaskell FFI calls. As such, this does not contain sum types nor error\nchecking. Thus this namespace is suitable for building your own abstraction\nover SDL, but is not recommended for day-to-day programming.";
        buildType = "Simple";
      };
      components = {
        sdl2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.StateVar
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.vector
          ] ++ pkgs.lib.optional (!_flags.no-linear) hsPkgs.linear;
          libs = [ pkgs.SDL2 ];
        };
        exes = {
          lazyfoo-lesson-01 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-02 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-03 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-04 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-05 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-07 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-08 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-09 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-10 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-11 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-12 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-13 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-14 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-15 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-17 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-18 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-19 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-20 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.sdl2
            ];
          };
          lazyfoo-lesson-43 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          twinklebear-lesson-01 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          twinklebear-lesson-02 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          twinklebear-lesson-04 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          twinklebear-lesson-04a = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          twinklebear-lesson-05 = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.sdl2
            ];
          };
          audio-example = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.sdl2
            ];
          };
          opengl-example = {
            depends  = optionals _flags.opengl-example [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.bytestring
              hsPkgs.vector
              hsPkgs.sdl2
            ];
          };
        };
      };
    }