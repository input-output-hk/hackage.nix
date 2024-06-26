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
      specVersion = "1.2";
      identifier = { name = "mines"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Antti Salonen 2008";
      maintainer = "ajsalonen@gmail.com";
      author = "Antti Salonen";
      homepage = "http://finder.homelinux.org/haskell/Mines";
      url = "";
      synopsis = "Minesweeper simulation using neural networks";
      description = "A simulation of AI controlled minesweepers\nusing neural networks and genetic algorithms.\nThe minesweepers learn to sweep mines themselves\nand their movements are recorded in an SVG file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mines" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }