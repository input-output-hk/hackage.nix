{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "split-record";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/split-record/";
      url = "";
      synopsis = "Split a big audio file into pieces at positions of silence";
      description = "Split a big audio file into pieces at positions of silence.\nYou can use this to split a recording of multiple songs into single songs.\n\n> \$ split-record recording.wav \"part%03d.wav\"\n\nYou can also calculate split positions only. They are computed lazily.\nThey can be loaded into Audacity for further fine tuning\nand to perform the actual split.\nFor generating only labels, run:\n\n> \$ split-record recording.wav > labels.txt";
      buildType = "Simple";
    };
    components = {
      exes = {
        "split-record" = {
          depends  = [
            (hsPkgs.synthesizer-core)
            (hsPkgs.soxlib)
            (hsPkgs.storablevector)
            (hsPkgs.transformers)
            (hsPkgs.utility-ht)
            (hsPkgs.numeric-prelude)
            (hsPkgs.base)
          ];
        };
      };
    };
  }