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
      identifier = { name = "fei-examples"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 - Jiasen Wu";
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
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
            (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
            (hsPkgs."fei-modelzoo" or (errorHandler.buildDepError "fei-modelzoo"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            ];
          buildable = true;
          };
        "cifar10" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
            (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
            (hsPkgs."fei-modelzoo" or (errorHandler.buildDepError "fei-modelzoo"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        "custom-op" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
            (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
            (hsPkgs."fei-modelzoo" or (errorHandler.buildDepError "fei-modelzoo"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            ];
          buildable = true;
          };
        "faster-rcnn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
            (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
            (hsPkgs."fei-modelzoo" or (errorHandler.buildDepError "fei-modelzoo"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."store" or (errorHandler.buildDepError "store"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
            (hsPkgs."fei-cocoapi" or (errorHandler.buildDepError "fei-cocoapi"))
            (hsPkgs."fei-datasets" or (errorHandler.buildDepError "fei-datasets"))
            ];
          buildable = true;
          };
        "mask-rcnn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
            (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
            (hsPkgs."fei-modelzoo" or (errorHandler.buildDepError "fei-modelzoo"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."store" or (errorHandler.buildDepError "store"))
            (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
            (hsPkgs."fei-cocoapi" or (errorHandler.buildDepError "fei-cocoapi"))
            (hsPkgs."fei-datasets" or (errorHandler.buildDepError "fei-datasets"))
            ];
          buildable = true;
          };
        };
      };
    }