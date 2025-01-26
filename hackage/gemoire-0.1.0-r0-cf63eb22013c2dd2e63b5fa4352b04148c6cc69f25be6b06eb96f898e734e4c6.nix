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
      identifier = { name = "gemoire"; version = "0.1.0"; };
      license = "GPL-3.0-or-later";
      copyright = "(c) Sena 2024";
      maintainer = "contact@sena.pink";
      author = "Sena <contact@sena.pink>";
      homepage = "https://codeberg.org/sena/gemoire";
      url = "";
      synopsis = "yet another static gemlog generator";
      description = "gemoire is just another take on a static gemlog generator with feeds trying\nto be flexible just enough, configured and served using Haskell. See the\nREADME.md for usage examples and Hackage for a detailed documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."gemmula" or (errorHandler.buildDepError "gemmula"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."gemoire" or (errorHandler.buildDepError "gemoire"))
          ];
          buildable = true;
        };
      };
    };
  }