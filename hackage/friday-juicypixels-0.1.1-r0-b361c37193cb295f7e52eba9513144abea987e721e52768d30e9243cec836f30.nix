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
      identifier = { name = "friday-juicypixels"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson";
      homepage = "https://github.com/TomMD/friday-juicypixels";
      url = "";
      synopsis = "Converts between the Friday and JuicyPixels image types";
      description = "See <https://github.com/TomMD/friday-juicypixels#readme README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."friday-juicypixels" or (errorHandler.buildDepError "friday-juicypixels"))
            ];
          buildable = true;
          };
        };
      };
    }