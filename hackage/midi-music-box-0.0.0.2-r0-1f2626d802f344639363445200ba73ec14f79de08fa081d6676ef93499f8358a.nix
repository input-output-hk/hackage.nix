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
      identifier = { name = "midi-music-box"; version = "0.0.0.2"; };
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
          depends = [
            (hsPkgs."diagrams-postscript" or (buildDepError "diagrams-postscript"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }