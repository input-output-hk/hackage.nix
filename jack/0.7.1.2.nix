{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      pkgconfig = true;
      jackfree = true;
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "jack";
          version = "0.7.1.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann, Stefan Kersten, Soenke Hahn <soenkehahn@gmail.com>";
        homepage = "http://www.haskell.org/haskellwiki/JACK";
        url = "";
        synopsis = "Bindings for the JACK Audio Connection Kit";
        description = "Bindings for the JACK Audio Connection Kit <http://jackaudio.org/>.\nIt has support both for PCM audio and MIDI handling.\n\nIn order to adapt to your system,\nyou may have to disable pkgConfig or jackFree cabal flags.\n\nYou should compile your clients with @ghc --make -O2 -threaded ...@";
        buildType = "Simple";
      };
      components = {
        jack = {
          depends  = [
            hsPkgs.midi
            hsPkgs.event-list
            hsPkgs.non-negative
            hsPkgs.bytestring
            hsPkgs.explicit-exception
            hsPkgs.transformers
            hsPkgs.enumset
            hsPkgs.array
            hsPkgs.semigroups
            hsPkgs.base
          ];
          libs = pkgs.lib.optional (!_flags.pkgconfig) pkgs.jack;
        };
        exes = {
          jack-amplify = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.jack
              hsPkgs.base
            ];
          };
          jack-capture = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.jack
              hsPkgs.explicit-exception
              hsPkgs.transformers
              hsPkgs.array
              hsPkgs.base
            ];
          };
          jack-impulse-train = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.jack
              hsPkgs.explicit-exception
              hsPkgs.transformers
              hsPkgs.array
              hsPkgs.base
            ];
          };
          jack-midimon = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.jack
              hsPkgs.midi
              hsPkgs.base
            ];
          };
          jack-melody = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.jack
              hsPkgs.midi
              hsPkgs.event-list
              hsPkgs.non-negative
              hsPkgs.explicit-exception
              hsPkgs.transformers
              hsPkgs.base
            ];
          };
          jack-synth = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.jack
              hsPkgs.midi
              hsPkgs.event-list
              hsPkgs.explicit-exception
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.storablevector
              hsPkgs.array
              hsPkgs.base
            ];
          };
        };
      };
    }