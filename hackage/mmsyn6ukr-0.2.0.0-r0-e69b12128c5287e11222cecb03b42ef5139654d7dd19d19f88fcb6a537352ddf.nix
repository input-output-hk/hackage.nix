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
      identifier = { name = "mmsyn6ukr"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) OleksandrZhabenko 2019";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/mmsyn6ukr";
      url = "";
      synopsis = "Can be used as a musical instrument synthesizer or for Ukrainian language listening";
      description = "A program that can be used as a musical instrument synthesizer or for Ukrainian speech synthesis especially for poets and writers";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mmsyn6ukr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
            (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
            (hsPkgs."mmsyn5" or (errorHandler.buildDepError "mmsyn5"))
            ];
          buildable = true;
          };
        };
      };
    }