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
      identifier = { name = "heckin"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "2019 Marshall Bowers";
      maintainer = "elliott.codes@gmail.com";
      author = "Marshall Bowers";
      homepage = "https://github.com/maxdeviant/heckin#readme";
      url = "";
      synopsis = "Oh heck, it's a heckin' case conversion library.";
      description = "Please see the README on GitHub at <https://github.com/maxdeviant/heckin#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "heckin-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."heckin" or (errorHandler.buildDepError "heckin"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }