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
      identifier = { name = "HCodecs"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2011 George Giorgidze";
      maintainer = "George Giorgidze (giorgidze@gmail.com)";
      author = "George Giorgidze";
      homepage = "http://www-db.informatik.uni-tuebingen.de/team/giorgidze";
      url = "";
      synopsis = "A library to read, write and manipulate MIDI, WAVE, and SoundFont2 files.";
      description = "The library provides functions to read, write and manipulate MIDI, WAVE and SoundFont2 multimedia files. It is written entirely in Haskell (without any FFI). It uses efficient  parsing and building combinators for binary data stored in ByteStrings (based on the one in 'binary' package).\n\nCorrectness of significant parts of the library has been validated with QuickCheck and Haskell Program Coverage (HPC) tool-kits.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
    };
  }