{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "alsa";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert, Iavor S. Diatchki, Henning Thielemann";
        maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
        author = "Bjorn Bringert <bjorn@bringert.net>, Iavor S. Diatchki <iavor.diatchki@gmail.com>";
        homepage = "http://www.haskell.org/haskellwiki/ALSA";
        url = "";
        synopsis = "Binding to the ALSA Library API.";
        description = "This package provides access to\n\n* ALSA sequencer (MIDI support)\n\n* ALSA realtime audio signal input and output";
        buildType = "Simple";
      };
      components = {
        alsa = {
          depends  = [
            hsPkgs.sample-frame
            hsPkgs.array
            hsPkgs.base
          ];
          libs = [ pkgs.asound ];
        };
      };
    }