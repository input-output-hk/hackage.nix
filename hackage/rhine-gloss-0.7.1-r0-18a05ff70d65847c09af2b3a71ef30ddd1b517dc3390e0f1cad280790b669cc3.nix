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
      specVersion = "1.18";
      identifier = { name = "rhine-gloss"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "Gloss backend for Rhine";
      description = "This package provides a simple wrapper for the `gloss` library,\nor rather the function `Graphics.Gloss.play`,\nenabling you to write `gloss` applications as signal functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."rhine" or (errorHandler.buildDepError "rhine"))
          (hsPkgs."dunai" or (errorHandler.buildDepError "dunai"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
        buildable = true;
        };
      exes = {
        "rhine-gloss-gears" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rhine-gloss" or (errorHandler.buildDepError "rhine-gloss"))
            ];
          buildable = true;
          };
        };
      };
    }