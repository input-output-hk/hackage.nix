{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; buildsynthesizer = false; debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "alsa-pcm"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Iavor S. Diatchki, Henning Thielemann";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Henning Thielemann <alsa@henning-thielemann.de>, Bjorn Bringert <bjorn@bringert.net>, Iavor S. Diatchki <iavor.diatchki@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "";
      synopsis = "Binding to the ALSA Library API (PCM audio).";
      description = "This package provides access to ALSA realtime audio signal input and output.\nFor MIDI support see alsa-seq.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
          (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
          (hsPkgs."sample-frame" or ((hsPkgs.pkgs-errors).buildDepError "sample-frame"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        pkgconfig = [
          (pkgconfPkgs."alsa" or ((hsPkgs.pkgs-errors).pkgConfDepError "alsa"))
          ];
        buildable = true;
        };
      exes = {
        "alsa-minisynth" = {
          depends = (pkgs.lib).optionals (flags.buildsynthesizer) [
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
            (hsPkgs."sample-frame" or ((hsPkgs.pkgs-errors).buildDepError "sample-frame"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildsynthesizer then true else false;
          };
        "alsa-sine" = {
          depends = (pkgs.lib).optionals (flags.buildsynthesizer) [
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
            (hsPkgs."sample-frame" or ((hsPkgs.pkgs-errors).buildDepError "sample-frame"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildsynthesizer then true else false;
          };
        "alsa-duplex" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
            (hsPkgs."sample-frame" or ((hsPkgs.pkgs-errors).buildDepError "sample-frame"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "alsa-play" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
            (hsPkgs."sample-frame" or ((hsPkgs.pkgs-errors).buildDepError "sample-frame"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "alsa-record" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
            (hsPkgs."sample-frame" or ((hsPkgs.pkgs-errors).buildDepError "sample-frame"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "alsa-volume-meter" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
            (hsPkgs."sample-frame" or ((hsPkgs.pkgs-errors).buildDepError "sample-frame"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }