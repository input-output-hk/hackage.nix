{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      fft = true;
      headmap = true;
      mouse = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hemokit";
        version = "0.6.5";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cipher-aes)
          (hsPkgs.conduit)
          (hsPkgs.deepseq)
          (hsPkgs.deepseq-generics)
          (hsPkgs.hidapi)
          (hsPkgs.mtl)
          (hsPkgs.network-simple)
          (hsPkgs.optparse-applicative)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.websockets)
        ];
      };
      exes = {
        "hemokit-mouse" = {
          depends = pkgs.lib.optionals (flags.mouse && !system.isWindows) [
            (hsPkgs.base)
            (hsPkgs.hemokit)
            (hsPkgs.pretty-show)
            (hsPkgs.robot)
          ];
        };
        "hemokit-dump" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hemokit)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.network-simple)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty-show)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.websockets)
          ];
        };
        "hemokit-dump-conduit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hemokit)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.network-simple)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty-show)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
        "hemokit-fft" = {
          depends = pkgs.lib.optionals (flags.fft) [
            (hsPkgs.base)
            (hsPkgs.hemokit)
            (hsPkgs.conduit)
            (hsPkgs.mtl)
            (hsPkgs.pretty-show)
            (hsPkgs.vector)
            (hsPkgs.vector-fftw)
          ];
        };
        "hemokit-headmap" = {
          depends = pkgs.lib.optionals (flags.headmap && !system.isWindows) [
            (hsPkgs.base)
            (hsPkgs.hemokit)
            (hsPkgs.cairo)
            (hsPkgs.gtk)
            (hsPkgs.mtl)
            (hsPkgs.pretty-show)
            (hsPkgs.svgcairo)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hemokit)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hemokit)
            (hsPkgs.criterion)
          ];
        };
        "bench-rollingbuffer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.mtl)
            (hsPkgs.hemokit)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }