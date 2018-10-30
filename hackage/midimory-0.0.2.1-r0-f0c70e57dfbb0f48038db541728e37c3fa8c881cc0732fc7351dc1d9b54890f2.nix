{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { reactive = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "midimory";
        version = "0.0.2.1";
      };
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
          depends  = [
            (hsPkgs.wx)
            (hsPkgs.wxcore)
            (hsPkgs.alsa-seq)
            (hsPkgs.alsa-core)
            (hsPkgs.optparse-applicative)
            (hsPkgs.random)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "midimory-reactive" = {
          depends  = pkgs.lib.optionals (flags.reactive) [
            (hsPkgs.reactive-banana-wx)
            (hsPkgs.reactive-banana)
            (hsPkgs.wx)
            (hsPkgs.wxcore)
            (hsPkgs.alsa-seq)
            (hsPkgs.alsa-core)
            (hsPkgs.optparse-applicative)
            (hsPkgs.random)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }