{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { fft = true; headmap = true; mouse = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hemokit"; version = "0.6.6"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."deepseq-generics" or (errorHandler.buildDepError "deepseq-generics"))
          (hsPkgs."hidapi" or (errorHandler.buildDepError "hidapi"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
        ];
        buildable = true;
      };
      exes = {
        "hemokit-mouse" = {
          depends = pkgs.lib.optionals (flags.mouse && !system.isWindows) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hemokit" or (errorHandler.buildDepError "hemokit"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."robot" or (errorHandler.buildDepError "robot"))
          ];
          buildable = if !flags.mouse || system.isWindows then false else true;
        };
        "hemokit-dump" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hemokit" or (errorHandler.buildDepError "hemokit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
        "hemokit-dump-conduit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hemokit" or (errorHandler.buildDepError "hemokit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
        "hemokit-fft" = {
          depends = pkgs.lib.optionals (flags.fft) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hemokit" or (errorHandler.buildDepError "hemokit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."vector-fftw" or (errorHandler.buildDepError "vector-fftw"))
          ];
          buildable = if !flags.fft then false else true;
        };
        "hemokit-headmap" = {
          depends = pkgs.lib.optionals (flags.headmap && !system.isWindows) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hemokit" or (errorHandler.buildDepError "hemokit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."svgcairo" or (errorHandler.buildDepError "svgcairo"))
          ];
          buildable = if !flags.headmap || system.isWindows
            then false
            else true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hemokit" or (errorHandler.buildDepError "hemokit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hemokit" or (errorHandler.buildDepError "hemokit"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
        "bench-rollingbuffer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hemokit" or (errorHandler.buildDepError "hemokit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }