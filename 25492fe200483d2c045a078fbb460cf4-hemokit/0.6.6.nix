{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      fft = true;
      headmap = true;
      mouse = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hemokit";
          version = "0.6.6";
        };
        license = "MIT";
        copyright = "2013 Niklas Hambüchen <mail@nh2.me>, Patrick Chilton <chpatrick@gmail.com>";
        maintainer = "Niklas Hambüchen <mail@nh2.me>";
        author = "Niklas Hambüchen <mail@nh2.me>, Patrick Chilton <chpatrick@gmail.com>";
        homepage = "https://github.com/nh2/hemokit";
        url = "";
        synopsis = "Haskell port of the Emokit EEG project";
        description = "This package allows reading raw data from the Emotiv EPOC EEG devices.\n\nIt is inspired and based on the code of the Emokit project\n(<https://github.com/openyou/emokit>), but entirely written in Haskell.\n\nIt contains an extensive, well-documented library for connecting to devices,\ndecrypting the stream, and parsing the relevant data out.\n\nData can be read from a given device via HIDAPI-hidraw or a dump file;\nreading from multiple devices is supported and when only one EEG is to\nbe used, the correct device is automatically selected.\n\nThere is also an executable, @hemokit-dump@, that can print out\n\n* raw data\n\n* incremental packets as sent from the device\n\n* the cumulative /state/ of the EEG\n\nin both their plain form and as JSON, and optionally serve any of this\nvia Websockets.";
        buildType = "Simple";
      };
      components = {
        hemokit = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cipher-aes
            hsPkgs.conduit
            hsPkgs.deepseq
            hsPkgs.deepseq-generics
            hsPkgs.hidapi
            hsPkgs.mtl
            hsPkgs.network-simple
            hsPkgs.optparse-applicative
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.websockets
          ];
        };
        exes = {
          hemokit-mouse = {
            depends  = pkgs.lib.optionals (_flags.mouse && !system.isWindows) [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.pretty-show
              hsPkgs.robot
            ];
          };
          hemokit-dump = {
            depends  = [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.network-simple
              hsPkgs.optparse-applicative
              hsPkgs.vector
              hsPkgs.websockets
              hsPkgs.pretty-show
              hsPkgs.split
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
          hemokit-dump-conduit = {
            depends  = [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.network-simple
              hsPkgs.optparse-applicative
              hsPkgs.vector
              hsPkgs.pretty-show
              hsPkgs.split
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
          hemokit-fft = {
            depends  = pkgs.lib.optionals _flags.fft [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.conduit
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.pretty-show
              hsPkgs.vector-fftw
            ];
          };
          hemokit-headmap = {
            depends  = pkgs.lib.optionals (_flags.headmap && !system.isWindows) [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.mtl
              hsPkgs.vector
              hsPkgs.cairo
              hsPkgs.gtk
              hsPkgs.pretty-show
              hsPkgs.svgcairo
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.criterion
            ];
          };
          bench-rollingbuffer = {
            depends  = [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.conduit
              hsPkgs.mtl
              hsPkgs.criterion
            ];
          };
        };
      };
    }