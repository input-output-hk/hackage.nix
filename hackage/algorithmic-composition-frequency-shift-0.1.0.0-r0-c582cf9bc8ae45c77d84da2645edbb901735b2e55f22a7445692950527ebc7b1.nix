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
      identifier = {
        name = "algorithmic-composition-frequency-shift";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/algorithmic-composition-frequency-shift";
      url = "";
      synopsis = "Helps to create experimental music. Uses SoX inside.";
      description = "Uses SoX fade (in a special 2D way) and frequency modulation. Provides a special representation for the composition.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mmsyn7l" or (errorHandler.buildDepError "mmsyn7l"))
          (hsPkgs."algorithmic-composition-basic" or (errorHandler.buildDepError "algorithmic-composition-basic"))
          (hsPkgs."doublezip" or (errorHandler.buildDepError "doublezip"))
        ];
        buildable = true;
      };
    };
  }