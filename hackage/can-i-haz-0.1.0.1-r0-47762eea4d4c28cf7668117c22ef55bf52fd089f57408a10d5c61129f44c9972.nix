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
      specVersion = "1.12";
      identifier = { name = "can-i-haz"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Georg Rudoy";
      maintainer = "0xd34df00d@gmail.com";
      author = "Georg Rudoy";
      homepage = "https://github.com/0xd34df00d/can-i-haz#readme";
      url = "";
      synopsis = "Generic implementation of the Has pattern";
      description = "Please see the README on GitHub at <https://github.com/0xd34df00d/can-i-haz#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "can-i-haz-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."can-i-haz" or (errorHandler.buildDepError "can-i-haz"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."should-not-typecheck" or (errorHandler.buildDepError "should-not-typecheck"))
            ];
          buildable = true;
          };
        };
      };
    }