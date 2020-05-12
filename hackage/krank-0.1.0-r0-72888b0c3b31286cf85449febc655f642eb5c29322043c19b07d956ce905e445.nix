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
      identifier = { name = "krank"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "guillaum.bouchard@gmail.com";
      author = "Guillaume Bouchard";
      homepage = "https://github.com/guibou/krank";
      url = "";
      synopsis = "Krank checks your code source comments for important markers";
      description = "Comments are part of our code and are not usually tested correctly. Hence their content can become incoherent or obsolete. Krank tries to avoid that by running checkers on the comment themselves.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."PyF" or (errorHandler.buildDepError "PyF"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."replace-megaparsec" or (errorHandler.buildDepError "replace-megaparsec"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          ];
        buildable = true;
        };
      exes = {
        "krank" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."krank" or (errorHandler.buildDepError "krank"))
            (hsPkgs."PyF" or (errorHandler.buildDepError "PyF"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      tests = {
        "krank-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."PyF" or (errorHandler.buildDepError "PyF"))
            (hsPkgs."krank" or (errorHandler.buildDepError "krank"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            ];
          buildable = true;
          };
        };
      };
    }