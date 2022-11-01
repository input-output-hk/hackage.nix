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
      identifier = { name = "hvect"; version = "0.3.1.0"; };
      license = "MIT";
      copyright = "(c) 2014 - 2016 Alexander Thiemann <mail@athiemann.net>, Tim Baumann <tim@timbaumann.info>";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>, Tim Baumann <tim@timbaumann.info>";
      homepage = "https://github.com/agrafix/hvect";
      url = "";
      synopsis = "Simple strict heterogeneous lists";
      description = "Small, concise and simple implementation of heterogeneous lists with useful utility functions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "hvect-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hvect" or (errorHandler.buildDepError "hvect"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            ];
          buildable = true;
          };
        };
      };
    }