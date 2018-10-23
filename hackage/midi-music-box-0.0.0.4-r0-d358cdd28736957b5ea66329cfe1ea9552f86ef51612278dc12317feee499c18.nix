{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "midi-music-box";
        version = "0.0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/midi-music-box";
      url = "";
      synopsis = "Convert MIDI file to music box punch tape";
      description = "Convert MIDI file to music box punch tape for this kind of music box:\n<http://www.amazon.de/Spieluhr-Lochstreifen/dp/B001WNZOVO/>\n\nRun it like so:\n\n> midi-music-box --output=song.ps song.mid\n\n@song.mid@ is the input file that must be a MIDI file.\n@song.ps@ is the output file, a PostScript file.\nYou can print it with a printer or to a PDF document\nor convert it to many other formats.\nCurrently, the output file must always have the @.ps@ filename extension.\nOther formats could be supported by adding more of the @diagrams-*@ packages.\nHowever, this means you have to alter the program.\n\nThe program will print the following symbols to the stripe:\n\n* blue dot - correct note that should be punched\n\n* # - this is a semitone and cannot be played accurately\n(at least on the type of music box I refered to, above)\n\n* ! - the note is outside the range\n\nIn case of notes outside the stripe you have to adapt the offset.\nYou may write\n\n> midi-music-box --zerokey=72 --output=song.ps song.mid\n\nin order to make the MIDI note with number 72\nthe left-most note on the stripe.\nDefault is @--zerokey=60@.\nThe number of notes in an octave is 12.\nIf you use a zerokey that is a multiple of 12\nthen white (piano) keys remain white, and black keys remain black,\nso to speak.\nIf zerokey is not a multiple of 12\nthen white keys may become black an vice versa.\nSince the music box type considered here only supports white keys,\nI recommend the following:\nIf the song is in key X major then lookup the MIDI note number for X\nand choose X plus or minus a multiple of 12 as zerokey.\nIf the song has key Y minor, then X=Y+3.\n\nYou find executables for MS Windows in two ZIP archives there:\n<http://code.haskell.org/~thielema/midi-music-box/>";
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