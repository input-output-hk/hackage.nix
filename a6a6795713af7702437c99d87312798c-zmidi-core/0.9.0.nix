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
      specVersion = "1.2";
      identifier = {
        name = "zmidi-core";
        version = "0.9.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "https://github.com/stephentetley/zmidi-core";
      url = "";
      synopsis = "Read and write MIDI files.";
      description = "\nMinimalist library to read and write MIDI files, with\ndependencies only on ByteString, Containers and Data.Binary.\n\nChangelog:\n\nv0.8.2 to v0.9.0:\n\n* Improvements to handling pitch bend. The value of pitch\nbend is now represented as a Word14 and it is encoded\nand decoded according to the MIDI spec (previously it\nwas left uninterpreted).\nThanks to Joachim Tilsted Kristensen.\n\n* Removed ZMidi.Core.VersionNumber file. This means we can\nhave a vanilla Setup.hs file.\n\nv0.8.1 to v0.8.2:\n\n* Updated to compile with ghc-8.4. Thanks to Evan Laforge.\n\nv0.8.0 to v0.8.1:\n\n* Fixed error with missing CPP directive in ZMidi.Core.Pretty.\n\nFor older changes see - CHANGES file.\n";
      buildType = "Simple";
    };
    components = {
      "zmidi-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.binary)
        ];
      };
    };
  }