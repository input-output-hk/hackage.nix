{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "alsa";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert, Iavor S. Diatchki";
        maintainer = "bjorn@bringert.net, iavor.diatchki@gmail.com";
        author = "Bjorn Bringert, Iavor S. Diatchki";
        homepage = "";
        url = "";
        synopsis = "Binding to the ALSA Library API.";
        description = "This package provides access to\n\n* ALSA sequencer (MIDI support)\n\n* ALSA realtime audio signal input and output";
        buildType = "Simple";
      };
      components = {
        alsa = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
          libs = [ pkgs.asound ];
        };
      };
    }