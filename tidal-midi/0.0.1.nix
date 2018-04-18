{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "tidal-midi";
          version = "0.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "(c) Alex McLean and other contributors, 2015";
        maintainer = "Alex McLean <alex@slab.org>, Mike Hodnick <mike.hodnick@gmail.com>";
        author = "Alex McLean";
        homepage = "http://tidal.lurk.org/";
        url = "";
        synopsis = "MIDI support for tidal";
        description = "Initial MIDI support for Tidal. Currently only supports Volca Keys synth, and the interface is likely to change significantly.";
        buildType = "Simple";
      };
      components = {
        tidal-midi = {
          depends  = [
            hsPkgs.base
            hsPkgs.tidal
            hsPkgs.alsa-core
            hsPkgs.alsa-seq
            hsPkgs.process
            hsPkgs.hashable
            hsPkgs.containers
            hsPkgs.hosc
          ];
        };
      };
    }