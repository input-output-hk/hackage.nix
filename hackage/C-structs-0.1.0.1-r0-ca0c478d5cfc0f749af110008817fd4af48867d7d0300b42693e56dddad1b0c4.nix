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
      specVersion = "1.10";
      identifier = { name = "C-structs"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2020 Simon Plakolb";
      maintainer = "s.plakolb@gmail.com";
      author = "Simon Plakolb";
      homepage = "https://github.com/pinselimo/cstructs-in-haskell";
      url = "";
      synopsis = "C-Structs implementation for Haskell";
      description = "C-structs lets you create correct C structs in Haskell.\nThese can be used for FFI calls, import as well as exports.\nThis package is part of the development efforts for the Python library\nPythas. Pythas provides an interface to import Haskell modules.\n\nNote: As of GHC 8.10 structs cannot be passed by value, only by reference.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."C-structs" or (errorHandler.buildDepError "C-structs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          ];
          buildable = true;
        };
      };
    };
  }