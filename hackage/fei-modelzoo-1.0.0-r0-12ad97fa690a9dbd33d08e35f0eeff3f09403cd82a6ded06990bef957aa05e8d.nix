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
      specVersion = "2.4";
      identifier = { name = "fei-modelzoo"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 - Jiasen Wu";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "http://github.com/pierric/fei-modelzoo";
      url = "";
      synopsis = "A collection of standard models";
      description = "A collection of standard models";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
          (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
          ];
        buildable = true;
        };
      };
    }