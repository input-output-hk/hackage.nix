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
      specVersion = "1.24";
      identifier = { name = "fei-cocoapi"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Jiasen Wu";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "http://github.com/pierric/fei-cocoapi";
      url = "";
      synopsis = "Cocodataset with cocoapi";
      description = "Haskell binding for the cocoapi in c";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."storable-tuple" or (errorHandler.buildDepError "storable-tuple"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."JuicyPixels-repa" or (errorHandler.buildDepError "JuicyPixels-repa"))
          (hsPkgs."JuicyPixels-extra" or (errorHandler.buildDepError "JuicyPixels-extra"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."store" or (errorHandler.buildDepError "store"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
          (hsPkgs."fei-dataiter" or (errorHandler.buildDepError "fei-dataiter"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "mask" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fei-cocoapi" or (errorHandler.buildDepError "fei-cocoapi"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-repa" or (errorHandler.buildDepError "JuicyPixels-repa"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."store" or (errorHandler.buildDepError "store"))
          ];
          buildable = true;
        };
        "profiling" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fei-cocoapi" or (errorHandler.buildDepError "fei-cocoapi"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."store" or (errorHandler.buildDepError "store"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }