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
      buildtests = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "synthesizer-midi";
        version = "0.5";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Render audio signals from MIDI files or realtime messages";
      description = "This package allows to read MIDI events\nand to convert them to audio and control signals.\nIncluded is a basic synthesizer that renders MIDI to WAV\n(or other audio signal formats supported by SoX).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.synthesizer-dimensional)
          (hsPkgs.synthesizer-core)
          (hsPkgs.sox)
          (hsPkgs.midi)
          (hsPkgs.storable-record)
          (hsPkgs.storablevector)
          (hsPkgs.deepseq)
          (hsPkgs.numeric-prelude)
          (hsPkgs.non-negative)
          (hsPkgs.event-list)
          (hsPkgs.data-accessor-transformers)
          (hsPkgs.data-accessor)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.transformers)
          (hsPkgs.utility-ht)
        ] ++ [ (hsPkgs.base) ];
      };
      exes = {
        "render-midi" = {};
        "test" = {};
      };
    };
  }