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
      specVersion = "3.0";
      identifier = { name = "typed-range"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "gautier.difolco@gmail.com";
      author = "Gautier DI FOLCO";
      homepage = "https://github.com/blackheaven/typed-range";
      url = "";
      synopsis = "An efficient and versatile typed range library.";
      description = "The range library alows the use of performant and versatile ranges in your code.\nIt supports bounded and unbounded ranges, ranges in a nested manner (like library\nversions), an efficient algebra of range computation and even a simplified interface\nfor ranges for the common cases. This library is far more efficient than using the\ndefault Data.List functions to approximate range behaviour. Performance is the major\nvalue offering of this library.\n\nIf this is your first time using this library it is highly recommended that you start\nwith \"Data.Range.Typed\"; it contains the basics of this library that meet most use\ncases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."typed-range" or (errorHandler.buildDepError "typed-range"))
          ];
          buildable = true;
        };
      };
    };
  }