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
      identifier = { name = "HCodecs"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "George Giorgidze (GGG at CS dot NOTT dot AC dot UK)";
      author = "George Giorgidze";
      homepage = "http://cs.nott.ac.uk/~ggg/";
      url = "";
      synopsis = "The library to read, write and manipulate MIDI, WAV, and SoundFont2 files.";
      description = "The library provides functions to read write and manipulate Midi, Wav and SoundFont2 multimedia file formats.\nIt is written entirly in Haskell (without any FFI).\nIt uses efficient parsing and building combinators for binary data stored in ByteStrings (based on the one in 'binary' package).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
    };
  }