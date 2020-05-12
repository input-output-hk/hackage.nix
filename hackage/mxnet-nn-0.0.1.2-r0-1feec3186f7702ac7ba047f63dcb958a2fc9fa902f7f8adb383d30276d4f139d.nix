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
      identifier = { name = "mxnet-nn"; version = "0.0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Jiasen Wu";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "http://github.com/pierric/mxnet-nn";
      url = "";
      synopsis = "Train a neural network with MXNet in Haskell.";
      description = "High level APIs to rain a neural network with MXNet in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mxnet" or (errorHandler.buildDepError "mxnet"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      exes = {
        "mnist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mxnet" or (errorHandler.buildDepError "mxnet"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-binary" or (errorHandler.buildDepError "attoparsec-binary"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."streaming-utils" or (errorHandler.buildDepError "streaming-utils"))
            (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."mxnet-nn" or (errorHandler.buildDepError "mxnet-nn"))
            ];
          buildable = true;
          };
        "lenet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mxnet" or (errorHandler.buildDepError "mxnet"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-binary" or (errorHandler.buildDepError "attoparsec-binary"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."streaming-utils" or (errorHandler.buildDepError "streaming-utils"))
            (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."mxnet-nn" or (errorHandler.buildDepError "mxnet-nn"))
            ];
          buildable = true;
          };
        };
      };
    }