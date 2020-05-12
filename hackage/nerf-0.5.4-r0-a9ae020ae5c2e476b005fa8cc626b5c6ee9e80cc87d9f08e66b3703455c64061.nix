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
      specVersion = "1.12";
      identifier = { name = "nerf"; version = "0.5.4"; };
      license = "BSD-3-Clause";
      copyright = "2012-2019 IPI PAN, Jakub Waszczuk";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/nerf#readme";
      url = "";
      synopsis = "Nerf, a named entity recognition tool based on linear-chain CRFs";
      description = "Please see the README on GitHub at <https://github.com/kawu/nerf#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."IntervalMap" or (errorHandler.buildDepError "IntervalMap"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crf-chain1" or (errorHandler.buildDepError "crf-chain1"))
          (hsPkgs."data-named" or (errorHandler.buildDepError "data-named"))
          (hsPkgs."dawg" or (errorHandler.buildDepError "dawg"))
          (hsPkgs."monad-ox" or (errorHandler.buildDepError "monad-ox"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."polimorf" or (errorHandler.buildDepError "polimorf"))
          (hsPkgs."polysoup" or (errorHandler.buildDepError "polysoup"))
          (hsPkgs."sgd" or (errorHandler.buildDepError "sgd"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-binary" or (errorHandler.buildDepError "text-binary"))
          (hsPkgs."tokenize" or (errorHandler.buildDepError "tokenize"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "nerf" = {
          depends = [
            (hsPkgs."IntervalMap" or (errorHandler.buildDepError "IntervalMap"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."crf-chain1" or (errorHandler.buildDepError "crf-chain1"))
            (hsPkgs."data-named" or (errorHandler.buildDepError "data-named"))
            (hsPkgs."dawg" or (errorHandler.buildDepError "dawg"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."monad-ox" or (errorHandler.buildDepError "monad-ox"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."nerf" or (errorHandler.buildDepError "nerf"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."polimorf" or (errorHandler.buildDepError "polimorf"))
            (hsPkgs."polysoup" or (errorHandler.buildDepError "polysoup"))
            (hsPkgs."sgd" or (errorHandler.buildDepError "sgd"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-binary" or (errorHandler.buildDepError "text-binary"))
            (hsPkgs."tokenize" or (errorHandler.buildDepError "tokenize"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }