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
      specVersion = "1.10";
      identifier = {
        name = "midi-music-box";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/midi-music-box";
      url = "";
      synopsis = "Convert MIDI file to music box punch tape";
      description = "Convert MIDI file to music box punch tape for this kind of music box:\n<http://www.amazon.de/Spieluhr-Lochstreifen/dp/B001WNZOVO/>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "midi-music-box" = {
          depends  = [
            (hsPkgs.diagrams-postscript)
            (hsPkgs.diagrams-lib)
            (hsPkgs.midi)
            (hsPkgs.event-list)
            (hsPkgs.optparse-applicative)
            (hsPkgs.containers)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }