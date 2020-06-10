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
      identifier = { name = "dobutokO4"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/dobutokO4";
      url = "";
      synopsis = "Helps to create experimental music. Uses SoX inside.";
      description = "Uses SoX fade (in a special 2D way) and frequency modulation. Provides a special representation for the composition.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mmsyn7l" or (errorHandler.buildDepError "mmsyn7l"))
          (hsPkgs."dobutokO2" or (errorHandler.buildDepError "dobutokO2"))
          (hsPkgs."vector-doublezip" or (errorHandler.buildDepError "vector-doublezip"))
          ];
        buildable = true;
        };
      };
    }