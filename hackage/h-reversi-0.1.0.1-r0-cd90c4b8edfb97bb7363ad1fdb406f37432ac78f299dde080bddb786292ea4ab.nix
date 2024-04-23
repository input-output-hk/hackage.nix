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
      identifier = { name = "h-reversi"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Apoorv Ingle";
      maintainer = "apoorv.ingle@gmail.com";
      author = "Apoorv Ingle";
      homepage = "https://github.com/apoorvingle/h-reversi";
      url = "";
      synopsis = "Reversi game in haskell/blank-canvas";
      description = "@h-reversi@ is build using using html5/blank-canvas\n@\n\n<<https://github.com/apoorvingle/h-reversi/blob/master/images/screenshot.jpeg>>\n\n@\nPlease visit <https://github.com/apoorvingle/h-reversi h-reversi> for more details";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blank-canvas" or (errorHandler.buildDepError "blank-canvas"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "h-reversi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blank-canvas" or (errorHandler.buildDepError "blank-canvas"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "h-reversi-properties" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."h-reversi" or (errorHandler.buildDepError "h-reversi"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }