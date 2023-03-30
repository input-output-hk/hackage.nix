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
      identifier = { name = "bits-show"; version = "0.0.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin & Julie Moronuki <hello@typeclasses.com>";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/bits-show";
      url = "";
      synopsis = "Showing data as strings of 0 and 1";
      description = "The @showFiniteBits@ function, for a type belonging to\nthe @FiniteBits@ class, displays the bits as a string.";
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
            (hsPkgs."bits-show" or (errorHandler.buildDepError "bits-show"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }