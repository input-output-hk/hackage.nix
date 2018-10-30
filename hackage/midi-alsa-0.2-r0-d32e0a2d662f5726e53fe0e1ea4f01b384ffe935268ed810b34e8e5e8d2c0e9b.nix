{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      splitbase = true;
      buildexamples = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "midi-alsa";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/MIDI";
      url = "";
      synopsis = "Convert between datatypes of the midi and the alsa packages";
      description = "MIDI is the Musical Instrument Digital Interface,\nALSA is the Advanced Linux Sound Architecture.\nThis package provides accessors to data structures\nof the ALSA sequencer interface\nvia the more specific types from the @midi@ package.\nThe package also contains a orphan instances\nfor the @alsa-seq:Event@ type\nof the @midi:Message.Class.Check@ and @midi:Message.Class.Query@ classes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.midi)
          (hsPkgs.alsa-seq)
          (hsPkgs.data-accessor)
          (hsPkgs.utility-ht)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }