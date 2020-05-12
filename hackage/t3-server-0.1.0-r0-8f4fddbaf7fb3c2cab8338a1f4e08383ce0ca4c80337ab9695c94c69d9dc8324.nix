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
      identifier = { name = "t3-server"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Joe Vargas";
      maintainer = "http://github.com/jxv";
      author = "Joe Vargas";
      homepage = "";
      url = "";
      synopsis = "tic-tac-toe server";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashmap" or (errorHandler.buildDepError "hashmap"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."t3-game" or (errorHandler.buildDepError "t3-game"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      };
    }