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
      specVersion = "2.4";
      identifier = { name = "interval-tree-clock"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2022 Arne Winter";
      maintainer = "45700009+arnemileswinter@users.noreply.github.com";
      author = "Arne Winter";
      homepage = "https://github.com/arnemileswinter/itc";
      url = "";
      synopsis = "Interval Tree Clocks";
      description = "A haskell Implementation of the interval tree clock as described in the paper Interval Tree Clocks: A Logical Clock for Dynamic Systems.\n\nLight on dependencies!\n\nInterval Tree Clocks serve as an alternative to vector clocks, in that clock-carriers may join or enter the system after clock initialization.\nTherefore it is not required to know beforehand how many actors are carrying clocks in a distributed system.\n\nThis is the first package i'm publishing, please don't hesitate to report issues you encounter.\nAlso I did not yet come to use this in production myself.\n\nThoroughly tested, with both quickcheck and visual debugging in conformance to the paper.\n\nThe paper this library is based on is @Almeida, Paulo & Baquero, Carlos & Fonte, Victor. (2008). Interval Tree Clocks: A Logical Clock for Dynamic Systems. 5401. 259-274. 10.1007/978-3-540-92221-6_18.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."interval-tree-clock" or (errorHandler.buildDepError "interval-tree-clock"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }