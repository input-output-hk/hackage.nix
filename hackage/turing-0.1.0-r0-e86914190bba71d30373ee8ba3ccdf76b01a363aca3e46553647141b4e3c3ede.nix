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
      identifier = { name = "turing"; version = "0.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "2015 Sebastian Poeplau";
      maintainer = "Sebastian Poeplau <sebastian.poeplau@gmail.com>";
      author = "Sebastian Poeplau";
      homepage = "http://github.com/sebastianpoeplau/turing#readme";
      url = "";
      synopsis = "A simple simulator for Turing machines";
      description = "This package provides some basic functions and types to\nsimulate a Turing machine.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "turing-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."turing" or (errorHandler.buildDepError "turing"))
            ];
          buildable = true;
          };
        };
      };
    }