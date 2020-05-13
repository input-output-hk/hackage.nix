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
      identifier = { name = "system-locale"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016";
      maintainer = "moritz.kiefer@purelyfunctional.org";
      author = "Moritz Kiefer";
      homepage = "https://github.com/cocreature/system-locale";
      url = "";
      synopsis = "Get system locales";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "system-locale-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."system-locale" or (errorHandler.buildDepError "system-locale"))
            ];
          buildable = true;
          };
        };
      };
    }