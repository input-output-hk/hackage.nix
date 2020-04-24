{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { reactive = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "midimory"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Henning Thielemann <alsa@henning-thielemann.de>";
      homepage = "http://www.youtube.com/watch?v=cOlR73h2uII";
      url = "";
      synopsis = "A Memory-like (Concentration, Pairs, ...) game for tones";
      description = "This is a game like Memory but with tones instead of images.\n\nThere is a grid of buttons and each button plays a tone when pressed.\nEvery tone is connected to two buttons.\nThe players must find the pairs of buttons with equal tones.\nThe two players alternatingly test pairs of buttons.\nIf one selects a pair of buttons with equal tones,\nthen his score is increased by one\nand he is allowed to perform another attempt.\n\nIn order to play the tones\nyou must connect it to a hardware or software synthesizer\nlike Timidity or FluidSynth.\n\n> timidity -A300 -iA -B4,4\n\nThen start the midimory game and connect the game to the synthesizer:\n\n> midimory --connect-to TiMidity\n\nor alternatively:\n\n> midimory &\n> aconnect Midimory TiMidity";
      buildType = "Simple";
      };
    components = {
      exes = {
        "midimory" = {
          depends = [
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "midimory-reactive" = {
          depends = (pkgs.lib).optionals (flags.reactive) [
            (hsPkgs."reactive-banana-wx" or ((hsPkgs.pkgs-errors).buildDepError "reactive-banana-wx"))
            (hsPkgs."reactive-banana" or ((hsPkgs.pkgs-errors).buildDepError "reactive-banana"))
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.reactive then true else false;
          };
        };
      };
    }