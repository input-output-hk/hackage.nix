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
      identifier = { name = "concraft-pl"; version = "2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012-2018 Jakub Waszczuk, IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "http://zil.ipipan.waw.pl/Concraft";
      url = "";
      synopsis = "Morphological tagger for Polish";
      description = "A morphological tagger for Polish based on the concraft library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."concraft" or (errorHandler.buildDepError "concraft"))
          (hsPkgs."pedestrian-dag" or (errorHandler.buildDepError "pedestrian-dag"))
          (hsPkgs."crf-chain1-constrained" or (errorHandler.buildDepError "crf-chain1-constrained"))
          (hsPkgs."crf-chain2-tiers" or (errorHandler.buildDepError "crf-chain2-tiers"))
          (hsPkgs."tagset-positional" or (errorHandler.buildDepError "tagset-positional"))
          (hsPkgs."sgd" or (errorHandler.buildDepError "sgd"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."lazy-io" or (errorHandler.buildDepError "lazy-io"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "concraft-pl" = {
          depends = [
            (hsPkgs."concraft-pl" or (errorHandler.buildDepError "concraft-pl"))
            (hsPkgs."concraft" or (errorHandler.buildDepError "concraft"))
            (hsPkgs."tagset-positional" or (errorHandler.buildDepError "tagset-positional"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."sgd" or (errorHandler.buildDepError "sgd"))
            (hsPkgs."pedestrian-dag" or (errorHandler.buildDepError "pedestrian-dag"))
            (hsPkgs."crf-chain1-constrained" or (errorHandler.buildDepError "crf-chain1-constrained"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }