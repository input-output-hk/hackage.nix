{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pulseaudio";
          version = "0.0.2.1";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "ongy@ongy.net";
        author = "Markus Ongyerth";
        homepage = "";
        url = "";
        synopsis = "A low-level (incomplete) wrapper around the pulseaudio client asynchronous api";
        description = "This package mainly exists, because I wanted to query the current system\nvolume from the pulse audio server.\n\nDoing this required me to build at least the core of the pulse api.\n\nThis package is provided as is, with very little testing and only a small\nsubset of the pulse api implemented.\nExpanding this package *should* be rather easy. At least for query/control.\nIf you are interested in doing this, but don't know how, feel free to contact me.\n\n\nIn package is a bit unrefined and rough. If you have better structure for\nmodules feel free to reorganize them and making a PR. This also means, don't\nsee this structur as fixed yet, it may change if someone has a better idea.";
        buildType = "Simple";
      };
      components = {
        pulseaudio = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.stm
            hsPkgs.containers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.transformers;
          libs = [ pkgs.pulse ];
        };
        exes = {
          pulse-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.pulseaudio
            ];
          };
        };
      };
    }