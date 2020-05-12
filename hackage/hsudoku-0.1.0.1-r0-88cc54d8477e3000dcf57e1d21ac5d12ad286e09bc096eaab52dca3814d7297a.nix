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
      identifier = { name = "hsudoku"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "marcelmoosbrugger@gmail.com";
      author = "Marcel Moosbrugger";
      homepage = "https://github.com/marcelmoosbrugger/hsudoku";
      url = "";
      synopsis = "Sudoku game with a GTK3 interface";
      description = "This package realizes a graphical GTK3 sudoku game. Moreover it\nprovides modules for loading and solving sudoku grids.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."HandsomeSoup" or (errorHandler.buildDepError "HandsomeSoup"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
          ];
        buildable = true;
        };
      exes = {
        "hsudoku" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."HandsomeSoup" or (errorHandler.buildDepError "HandsomeSoup"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
            (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
            (hsPkgs."hsudoku" or (errorHandler.buildDepError "hsudoku"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."HandsomeSoup" or (errorHandler.buildDepError "HandsomeSoup"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
            (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hsudoku" or (errorHandler.buildDepError "hsudoku"))
            ];
          buildable = true;
          };
        "travis" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."HandsomeSoup" or (errorHandler.buildDepError "HandsomeSoup"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
            (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hsudoku" or (errorHandler.buildDepError "hsudoku"))
            ];
          buildable = true;
          };
        };
      };
    }