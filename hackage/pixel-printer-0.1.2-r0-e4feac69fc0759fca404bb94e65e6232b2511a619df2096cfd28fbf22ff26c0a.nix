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
      specVersion = "2.2";
      identifier = { name = "pixel-printer"; version = "0.1.2"; };
      license = "GPL-3.0-only";
      copyright = "2021 Zachary Sarver";
      maintainer = "Zachary.Sarver@gmail.com";
      author = "Zachary Sarver";
      homepage = "https://github.com/ZSarver/pixel-printer#readme";
      url = "";
      synopsis = "A program for turning pixel art into 3D prints";
      description = "Pixel-printer is a utility for turning pixel art into 3d prints.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
        ];
        buildable = true;
      };
      exes = {
        "pixel-printer-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pixel-printer" or (errorHandler.buildDepError "pixel-printer"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
      tests = {
        "pixel-printer-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pixel-printer" or (errorHandler.buildDepError "pixel-printer"))
          ];
          buildable = true;
        };
      };
    };
  }