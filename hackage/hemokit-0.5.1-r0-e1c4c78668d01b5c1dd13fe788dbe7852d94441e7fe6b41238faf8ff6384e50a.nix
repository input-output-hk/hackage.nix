let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hemokit"; version = "0.5.1"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cipher-aes" or (buildDepError "cipher-aes"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."deepseq-generics" or (buildDepError "deepseq-generics"))
          (hsPkgs."hidapi" or (buildDepError "hidapi"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          ];
        };
      exes = {
        "hemokit-mouse" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hemokit" or (buildDepError "hemokit"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."robot" or (buildDepError "robot"))
            (hsPkgs."xhb" or (buildDepError "xhb"))
            ];
          };
        "hemokit-dump" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hemokit" or (buildDepError "hemokit"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            ];
          };
        "hemokit-dump-conduit" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hemokit" or (buildDepError "hemokit"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "hemokit-fft" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hemokit" or (buildDepError "hemokit"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-fftw" or (buildDepError "vector-fftw"))
            ];
          };
        "hemokit-headmap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hemokit" or (buildDepError "hemokit"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."svgcairo" or (buildDepError "svgcairo"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hemokit" or (buildDepError "hemokit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hemokit" or (buildDepError "hemokit"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        "bench-rollingbuffer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."hemokit" or (buildDepError "hemokit"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }