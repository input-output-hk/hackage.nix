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
      identifier = { name = "fei-datasets"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 - Jiasen Wu";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "http://github.com/pierric/fei-datasets";
      url = "";
      synopsis = "Some datasets";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."storable-tuple" or (errorHandler.buildDepError "storable-tuple"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
          (hsPkgs."store" or (errorHandler.buildDepError "store"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
          (hsPkgs."conduit-concurrent-map" or (errorHandler.buildDepError "conduit-concurrent-map"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."hip" or (errorHandler.buildDepError "hip"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
          (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
          (hsPkgs."fei-cocoapi" or (errorHandler.buildDepError "fei-cocoapi"))
        ];
        buildable = true;
      };
      exes = {
        "render" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
            (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
            (hsPkgs."fei-datasets" or (errorHandler.buildDepError "fei-datasets"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."hip" or (errorHandler.buildDepError "hip"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."FontyFruity" or (errorHandler.buildDepError "FontyFruity"))
            (hsPkgs."Rasterific" or (errorHandler.buildDepError "Rasterific"))
          ];
          buildable = true;
        };
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
            (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
            (hsPkgs."fei-datasets" or (errorHandler.buildDepError "fei-datasets"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."hip" or (errorHandler.buildDepError "hip"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
            (hsPkgs."stm-conduit" or (errorHandler.buildDepError "stm-conduit"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-repa" or (errorHandler.buildDepError "JuicyPixels-repa"))
            (hsPkgs."JuicyPixels-extra" or (errorHandler.buildDepError "JuicyPixels-extra"))
          ];
          buildable = true;
        };
      };
    };
  }