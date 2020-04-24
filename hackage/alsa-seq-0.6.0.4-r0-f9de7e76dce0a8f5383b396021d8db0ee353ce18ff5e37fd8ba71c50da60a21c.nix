{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; modifyfilter = true; };
    package = {
      specVersion = "1.14";
      identifier = { name = "alsa-seq"; version = "0.6.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Iavor S. Diatchki, Dylan Simon, Henning Thielemann";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Henning Thielemann <alsa@henning-thielemann.de>,\nDylan Simon <dylan@dylex.net>,\nBjorn Bringert <bjorn@bringert.net>,\nIavor S. Diatchki <iavor.diatchki@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "";
      synopsis = "Binding to the ALSA Library API (MIDI sequencer).";
      description = "This package provides access to ALSA sequencer (MIDI support).\nFor audio support see alsa-pcm.\nIncluded are some simple example programs.\nFor more example programs including a GUI, see the alsa-gui programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
          (hsPkgs."enumset" or ((hsPkgs.pkgs-errors).buildDepError "enumset"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."poll" or ((hsPkgs.pkgs-errors).buildDepError "poll"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        pkgconfig = [
          (pkgconfPkgs."alsa" or ((hsPkgs.pkgs-errors).pkgConfDepError "alsa"))
          ];
        buildable = true;
        };
      exes = {
        "alsa-seq-dump" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "alsa-seq-send-note" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "alsa-seq-broadcast" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "alsa-seq-list-ports" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."enumset" or ((hsPkgs.pkgs-errors).buildDepError "enumset"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "alsa-seq-melody" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "alsa-seq-list-subscribers" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "alsa-seq-beat" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "alsa-seq-sysex" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }