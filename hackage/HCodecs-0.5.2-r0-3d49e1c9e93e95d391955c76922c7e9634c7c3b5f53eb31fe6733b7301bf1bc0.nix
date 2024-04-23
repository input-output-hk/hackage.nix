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
      specVersion = "1.8";
      identifier = { name = "HCodecs"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2014 George Giorgidze";
      maintainer = "George Giorgidze (giorgidze@gmail.com)\n, Pavel Krajcevski (krajcevski@gmail.com)";
      author = "George Giorgidze";
      homepage = "http://www-db.informatik.uni-tuebingen.de/team/giorgidze";
      url = "";
      synopsis = "A library to read, write and manipulate MIDI, WAVE, and SoundFont2 files.";
      description = "The library provides functions to read, write and manipulate MIDI, WAVE and\nSoundFont2 multimedia files. It is written entirely in Haskell (without any\nFFI). It uses efficient  parsing and building combinators for binary data\nstored in ByteStrings (based on the one in 'binary' package).\n\nCorrectness of significant parts of the library has been validated with\nQuickCheck and Haskell Program Coverage (HPC) tool-kits.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          ];
          buildable = true;
        };
      };
    };
  }