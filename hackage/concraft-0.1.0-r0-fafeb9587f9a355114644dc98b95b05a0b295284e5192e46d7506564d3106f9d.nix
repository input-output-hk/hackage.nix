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
      specVersion = "1.6";
      identifier = { name = "concraft"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Jakub Waszczuk, 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/concraft";
      url = "";
      synopsis = "Morphosyntactic tagging tool based on constrained CRFs";
      description = "A morphosyntactic tagging tool based on constrained conditional\nrandom fields.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-binary" or (errorHandler.buildDepError "text-binary"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."crf-chain1-constrained" or (errorHandler.buildDepError "crf-chain1-constrained"))
          (hsPkgs."monad-ox" or (errorHandler.buildDepError "monad-ox"))
          (hsPkgs."sgd" or (errorHandler.buildDepError "sgd"))
          ];
        buildable = true;
        };
      exes = {
        "concraft-guess" = {
          depends = [
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }