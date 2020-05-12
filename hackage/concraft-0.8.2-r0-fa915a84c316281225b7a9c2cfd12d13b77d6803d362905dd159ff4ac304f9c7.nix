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
    flags = { buildanatool = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "concraft"; version = "0.8.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Jakub Waszczuk, 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "http://zil.ipipan.waw.pl/Concraft";
      url = "";
      synopsis = "Morphological disambiguation based on constrained CRFs";
      description = "A morphological disambiguation library based on\nconstrained conditional random fields.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-binary" or (errorHandler.buildDepError "text-binary"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-binary" or (errorHandler.buildDepError "vector-binary"))
          (hsPkgs."monad-ox" or (errorHandler.buildDepError "monad-ox"))
          (hsPkgs."sgd" or (errorHandler.buildDepError "sgd"))
          (hsPkgs."tagset-positional" or (errorHandler.buildDepError "tagset-positional"))
          (hsPkgs."crf-chain1-constrained" or (errorHandler.buildDepError "crf-chain1-constrained"))
          (hsPkgs."crf-chain2-tiers" or (errorHandler.buildDepError "crf-chain2-tiers"))
          (hsPkgs."monad-codec" or (errorHandler.buildDepError "monad-codec"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."lazy-io" or (errorHandler.buildDepError "lazy-io"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
        buildable = true;
        };
      exes = {
        "concraft-analyse-model" = {
          depends = (pkgs.lib).optionals (flags.buildanatool) [
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
            ];
          buildable = if flags.buildanatool then true else false;
          };
        };
      };
    }