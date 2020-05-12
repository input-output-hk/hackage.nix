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
      identifier = { name = "fei-examples"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Jiasen Wu";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "https://github.com/pierric/fei-examples#readme";
      url = "";
      synopsis = "fei examples";
      description = "Various fei examples";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lenet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
            (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
            (hsPkgs."fei-dataiter" or (errorHandler.buildDepError "fei-dataiter"))
            ];
          buildable = true;
          };
        "cifar10" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
            (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
            (hsPkgs."fei-dataiter" or (errorHandler.buildDepError "fei-dataiter"))
            ];
          buildable = true;
          };
        "custom-op" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
            (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
            (hsPkgs."fei-dataiter" or (errorHandler.buildDepError "fei-dataiter"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "rcnn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
            (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
            (hsPkgs."fei-dataiter" or (errorHandler.buildDepError "fei-dataiter"))
            (hsPkgs."fei-cocoapi" or (errorHandler.buildDepError "fei-cocoapi"))
            ];
          buildable = true;
          };
        };
      };
    }