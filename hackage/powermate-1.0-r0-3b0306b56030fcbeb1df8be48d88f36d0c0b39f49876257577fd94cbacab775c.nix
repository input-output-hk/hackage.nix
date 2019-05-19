{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "powermate"; version = "1.0"; };
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
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.unix) (hsPkgs.directory) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      exes = {
        "powermate-print" = { depends = [ (hsPkgs.base) (hsPkgs.powermate) ]; };
        "powermate-pulse" = { depends = [ (hsPkgs.base) (hsPkgs.powermate) ]; };
        };
      };
    }