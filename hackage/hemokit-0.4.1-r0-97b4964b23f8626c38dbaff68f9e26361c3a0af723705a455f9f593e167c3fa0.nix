{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cipher-aes" or ((hsPkgs.pkgs-errors).buildDepError "cipher-aes"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."deepseq-generics" or ((hsPkgs.pkgs-errors).buildDepError "deepseq-generics"))
          (hsPkgs."hidapi" or ((hsPkgs.pkgs-errors).buildDepError "hidapi"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "hemokit-mouse" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hemokit" or ((hsPkgs.pkgs-errors).buildDepError "hemokit"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."robot" or ((hsPkgs.pkgs-errors).buildDepError "robot"))
            (hsPkgs."xhb" or ((hsPkgs.pkgs-errors).buildDepError "xhb"))
            ];
          buildable = true;
          };
        "hemokit-dump" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hemokit" or ((hsPkgs.pkgs-errors).buildDepError "hemokit"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
            ];
          buildable = true;
          };
        "hemokit-fft" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hemokit" or ((hsPkgs.pkgs-errors).buildDepError "hemokit"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-fftw" or ((hsPkgs.pkgs-errors).buildDepError "vector-fftw"))
            ];
          buildable = true;
          };
        "hemokit-headmap" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hemokit" or ((hsPkgs.pkgs-errors).buildDepError "hemokit"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."svgcairo" or ((hsPkgs.pkgs-errors).buildDepError "svgcairo"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hemokit" or ((hsPkgs.pkgs-errors).buildDepError "hemokit"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hemokit" or ((hsPkgs.pkgs-errors).buildDepError "hemokit"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }