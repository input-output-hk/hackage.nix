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
      specVersion = "1.8";
      identifier = { name = "Strafunski-Sdf2Haskell"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "darmanithird@gmail.com";
      author = "Ralf Laemmel, Joost Visser";
      homepage = "";
      url = "";
      synopsis = "Converts SDF to Haskell";
      description = "Generates code for using SDF grammars in Haskell. See <http://www.syntax-definition.org/> for more information about SDF.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Sdf2Haskell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ATermLib" or (errorHandler.buildDepError "ATermLib"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."StrategyLib" or (errorHandler.buildDepError "StrategyLib"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            ];
          buildable = true;
          };
        };
      };
    }