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
      identifier = { name = "monad-lrs"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bjin1990+haskell@gmail.com";
      author = "Bin Jin";
      homepage = "https://github.com/bjin/monad-lrs";
      url = "";
      synopsis = "a monad to calculate linear recursive sequence";
      description = "A monad to calculate linear recursive sequence efficiently. Matrix\nmultiplication and fast exponentiation algorithm are used to speed\nup calculating the number with particular index in the sequence. This\nlibrary also provides a monadic DSL to describe the sequence.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }