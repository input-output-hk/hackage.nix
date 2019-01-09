{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013, 2014  Gabríel Arthúr Pétursson";
      maintainer = "gabriel@system.is, ollie@ocharles.org.uk";
      author = "Gabríel Arthúr Pétursson, Oliver Charles";
      homepage = "";
      url = "";
      synopsis = "Both high- and low-level bindings to the SDL library (version 2.0.3).";
      description = "This package contains bindings to the SDL 2 library, in both high- and\nlow-level forms:\n\nThe 'SDL' namespace contains high-level bindings, where enumerations are split\ninto sum types, and we perform automatic error-checking.\n\nThe 'SDL.Raw' namespace contains an almost 1-1 translation of the C API into\nHaskell FFI calls. As such, this does not contain sum types nor error\nchecking. Thus this namespace is suitable for building your own abstraction\nover SDL, but is not recommended for day-to-day programming.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.linear)
          (hsPkgs.StateVar)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        libs = [ (pkgs."SDL2") ];
        pkgconfig = [ (pkgconfPkgs.sdl2) ];
        };
      exes = {
        "lazyfoo-lesson-01" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-02" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-03" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-04" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-05" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-07" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-08" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-09" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-10" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-11" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-12" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-13" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-14" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-15" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-17" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-18" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-19" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.vector)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-20" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.vector)
            (hsPkgs.sdl2)
            ];
          };
        "lazyfoo-lesson-43" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "twinklebear-lesson-01" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "twinklebear-lesson-02" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "twinklebear-lesson-04" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "twinklebear-lesson-04a" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "twinklebear-lesson-05" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            ];
          };
        "audio-example" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }