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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hemokit"; version = "0.4.1"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."deepseq-generics" or (errorHandler.buildDepError "deepseq-generics"))
          (hsPkgs."hidapi" or (errorHandler.buildDepError "hidapi"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "hemokit-mouse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hemokit" or (errorHandler.buildDepError "hemokit"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."robot" or (errorHandler.buildDepError "robot"))
            (hsPkgs."xhb" or (errorHandler.buildDepError "xhb"))
            ];
          buildable = true;
          };
        "hemokit-dump" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hemokit" or (errorHandler.buildDepError "hemokit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            ];
          buildable = true;
          };
        "hemokit-fft" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hemokit" or (errorHandler.buildDepError "hemokit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-fftw" or (errorHandler.buildDepError "vector-fftw"))
            ];
          buildable = true;
          };
        "hemokit-headmap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hemokit" or (errorHandler.buildDepError "hemokit"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."svgcairo" or (errorHandler.buildDepError "svgcairo"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hemokit" or (errorHandler.buildDepError "hemokit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
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
        };
      };
    }