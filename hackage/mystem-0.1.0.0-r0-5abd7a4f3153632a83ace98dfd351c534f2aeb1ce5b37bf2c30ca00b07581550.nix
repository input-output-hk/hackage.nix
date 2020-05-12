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
      identifier = { name = "mystem"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Sergey N. Yashin";
      maintainer = "yashin.sergey@gmail.com";
      author = "Sergey N. Yashin";
      homepage = "https://github.com/wapxmas/mystem#readme";
      url = "";
      synopsis = "Bindings for Mystem morphological analyzer executabe";
      description = "Bindings for Mystem morphological analyzer executabe";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "mystem-test-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mystem" or (errorHandler.buildDepError "mystem"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }