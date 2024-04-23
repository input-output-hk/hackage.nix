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
      identifier = { name = "range"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "robertmassaioli@gmail.com";
      author = "Robert Massaioli";
      homepage = "https://bitbucket.org/robertmassaioli/range";
      url = "";
      synopsis = "An efficient and versatile range library.";
      description = "The range library alows the use of performant and versatile ranges in your code.\nIt supports bounded and unbounded ranges, ranges in a nested manner (like library\nversions), an efficient algebra of range computation and even a simplified interface\nfor ranges for the common cases. This library is far more efficient than using the\ndefault Data.List functions to approximate range behaviour. Performance is the major\nvalue offering of this library.\nIf this is your first time using this library it is highly recommended that you start\nwith \"Data.Range.Range\"; it contains the basics of this library that meet most use\ncases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
        ];
        buildable = true;
      };
      tests = {
        "test-range" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."range" or (errorHandler.buildDepError "range"))
          ] ++ [ (hsPkgs."free" or (errorHandler.buildDepError "free")) ];
          buildable = true;
        };
      };
    };
  }