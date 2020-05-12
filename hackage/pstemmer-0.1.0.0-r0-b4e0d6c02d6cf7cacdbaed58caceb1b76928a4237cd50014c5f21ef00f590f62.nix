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
      identifier = { name = "pstemmer"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Sergey N. Yashin";
      maintainer = "yashin.sergey@gmail.com";
      author = "Sergey N. Yashin";
      homepage = "https://github.com/wapxmas/pstemmer#readme";
      url = "";
      synopsis = "A Haskell Implementation of the Porter Stemmer";
      description = "A Haskell Implementation of the Porter Stemmer";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "pstemmer-test-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pstemmer" or (errorHandler.buildDepError "pstemmer"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }