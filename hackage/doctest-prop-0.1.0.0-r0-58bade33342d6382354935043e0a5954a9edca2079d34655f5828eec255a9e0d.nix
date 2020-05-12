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
      identifier = { name = "doctest-prop"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "";
      url = "";
      synopsis = "Allow QuickCheck-style property testing within doctest.";
      description = "This package allows you to write QuickCheck properties within\ndoctest, using functions that keep silence when test succeeds and\nprint out the test outputs otherwise.\n\nTo enjoy behavior driven development in Haskell, first import\n@Test.DocTest.Prop@, and use @prop@, @propWith@ and @unit@ to write\nin-place tests. For more details, please refer to examples in the module\n@Test.DocTest.Prop@ .";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }