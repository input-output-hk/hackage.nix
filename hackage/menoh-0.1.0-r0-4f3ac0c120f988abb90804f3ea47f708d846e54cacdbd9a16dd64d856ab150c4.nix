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
      identifier = { name = "menoh"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Copyright 2018 Preferred Networks, Inc.";
      maintainer = "Masahiro Sakai <sakai@preferred.jp>";
      author = "Masahiro Sakai <sakai@preferred.jp>";
      homepage = "";
      url = "";
      synopsis = "Haskell binding for Menoh DNN inference library";
      description = "Menoh is a MKL-DNN based DNN inference library for ONNX models. See https://github.com/pfnet-research/menoh/ for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        pkgconfig = [
          (pkgconfPkgs."menoh" or (errorHandler.pkgConfDepError "menoh"))
          ];
        buildable = true;
        };
      exes = {
        "vgg16_example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."menoh" or (errorHandler.buildDepError "menoh"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "mnist_example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."menoh" or (errorHandler.buildDepError "menoh"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }