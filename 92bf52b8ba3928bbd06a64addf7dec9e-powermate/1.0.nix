{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "powermate";
          version = "1.0";
        };
        license = "MIT";
        copyright = "(C) 2006 Evan Martin,\n(C) 2017 Patrick Pelletier";
        maintainer = "Patrick Pelletier <code@funwithsoftware.org>";
        author = "Evan Martin";
        homepage = "https://github.com/ppelleti/powermate";
        url = "";
        synopsis = "bindings for Griffin PowerMate USB";
        description = "This library is for interfacing the Griffin PowerMate USB (a\nbig silver knob you can turn and click) with Haskell on Linux.\nBesides reading events from the PowerMate, you can also\ncontrol the brightness, pulse speed, and pulse waveform of the\nbuilt-in LED.";
        buildType = "Simple";
      };
      components = {
        powermate = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.directory
          ];
        };
        exes = {
          powermate-print = {
            depends  = [
              hsPkgs.base
              hsPkgs.powermate
            ];
          };
          powermate-pulse = {
            depends  = [
              hsPkgs.base
              hsPkgs.powermate
            ];
          };
        };
      };
    }