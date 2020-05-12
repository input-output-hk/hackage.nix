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
      specVersion = "1.14.0";
      identifier = { name = "prizm"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Parnell Springmeyer";
      maintainer = "ixmatus@gmail.com";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/prizm";
      url = "http://hackage.haskell.org/package/prizm";
      synopsis = "A haskell library for computing with colors";
      description = "Prizm is a library for converting between\ndifferent color representations and mutating\ncolors (interpolation, lightness, hue, chroma,\ntint/shade).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."prizm" or (errorHandler.buildDepError "prizm"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }