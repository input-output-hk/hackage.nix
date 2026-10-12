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
      identifier = { name = "terminal-3d-graphics"; version = "0.2.0.0"; };
      license = "Unlicense";
      copyright = "";
      maintainer = "LarzPiechocki@gmail.com";
      author = "Larz Piechocki";
      homepage = "https://github.com/LarzP123/terminal-3d-graphics";
      url = "";
      synopsis = "A terminal 3D rasteriser with textures, portals, and baked lighting";
      description = "Simple multi-module Haskell terminal 3D engine.\nCan be used as a library or compiled to a demo executable.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
      exes = {
        "t3d" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."terminal-3d-graphics" or (errorHandler.buildDepError "terminal-3d-graphics"))
          ];
          buildable = true;
        };
      };
    };
  }