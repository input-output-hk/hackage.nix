{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "zmidi-core"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Read and write MIDI files.";
      description = "\nMinimalist library to read and write MIDI files, with\ndependencies only on ByteString and Data.Binary.\n\nChangelog:\n\nv0.2.1 to v0.3.0:\n\n* Revised naming of the MIDI data types. All data types now have\nthe prefix Midi (previously only MidiFile followed this scheme).\nThe rationale for this is client software, that might want a\nhigher-level representation, is then free to use the more\ngeneric names Track, Message, etc.\n\n* @DeltaTime@ made a newtype wrapper rather than a type synonym.\n\n* Renamed the pretty print functions @track@ to @printMidiTrack@\nand @header@ to @printMidiHeader@.\n\n* Moved internal dataypes (SplitByte, Varlen) into a private\nmodule.\n\nv0.2.0 to v0.2.1:\n\n* Added Show class constraints to various type signatures to\naccommodate changes to Num superclass hierarchy in GHC 7.4.\nThanks to Remy Moueza for the patches.\n\nv0.1.0 to v0.2.0:\n\n* Added a top-level /shim/ module to import all the exposed\nmodules. Added a version number module\n\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        buildable = true;
      };
    };
  }