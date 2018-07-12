{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hemokit";
          version = "0.5.1";
        };
        license = "MIT";
        copyright = "2013 Niklas Hambüchen <mail@nh2.me>, Patrick Chilton <chpatrick@gmail.com>";
        maintainer = "Niklas Hambüchen <mail@nh2.me>";
        author = "Niklas Hambüchen <mail@nh2.me>, Patrick Chilton <chpatrick@gmail.com>";
        homepage = "https://github.com/nh2/haskell-hemokit";
        url = "";
        synopsis = "Haskell port of the Emokit EEG project";
        description = "This package allows reading raw data from the Emotiv EPOC EEG devices.\n\nIt is inspired and based on the code of the Emokit project\n(<https://github.com/openyou/emokit>), but entirely written in Haskell.\n\nIt contains an extensive, well-documented library for connecting to devices,\ndecrypting the stream, and parsing the relevant data out.\n\nData can be read from a given device via HIDAPI-hidraw or a dump file;\nreading from multiple devices is supported and when only one EEG is to\nbe used, the correct device is automatically selected.\n\nThere is also an executable, @hemokit-dump@, that can print out\n\n* raw data\n\n* incremental packets as sent from the device\n\n* the cumulative /state/ of the EEG\n\nin both their plain form and as JSON, and optionally serve any of this\nvia Websockets.";
        buildType = "Simple";
      };
      components = {
        "hemokit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.cipher-aes
            hsPkgs.conduit
            hsPkgs.deepseq
            hsPkgs.deepseq-generics
            hsPkgs.hidapi
            hsPkgs.mtl
            hsPkgs.optparse-applicative
            hsPkgs.vector
            hsPkgs.websockets
          ];
        };
        exes = {
          "hemokit-mouse" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.pretty-show
              hsPkgs.robot
              hsPkgs.xhb
            ];
          };
          "hemokit-dump" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.aeson
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
              hsPkgs.pretty-show
              hsPkgs.split
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.websockets
            ];
          };
          "hemokit-dump-conduit" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.aeson
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.optparse-applicative
              hsPkgs.pretty-show
              hsPkgs.split
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
          "hemokit-fft" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.conduit
              hsPkgs.mtl
              hsPkgs.pretty-show
              hsPkgs.vector
              hsPkgs.vector-fftw
            ];
          };
          "hemokit-headmap" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.cairo
              hsPkgs.gtk
              hsPkgs.mtl
              hsPkgs.pretty-show
              hsPkgs.svgcairo
              hsPkgs.vector
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hemokit
              hsPkgs.criterion
            ];
          };
          "bench-rollingbuffer" = {
            depends  = [
              hsPkgs.base
              hsPkgs.conduit
              hsPkgs.mtl
              hsPkgs.hemokit
              hsPkgs.criterion
            ];
          };
        };
      };
    }