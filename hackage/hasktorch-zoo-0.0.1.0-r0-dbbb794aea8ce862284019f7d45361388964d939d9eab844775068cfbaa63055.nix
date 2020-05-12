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
    flags = { cuda = false; gd = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hasktorch-zoo"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Neural architectures in hasktorch";
      description = "Neural architectures, data loading packages, initializations, and common tensor abstractions in hasktorch.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."backprop" or (errorHandler.buildDepError "backprop"))
          (hsPkgs."dimensions" or (errorHandler.buildDepError "dimensions"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hasktorch" or (errorHandler.buildDepError "hasktorch"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (if flags.gd
          then [ (hsPkgs."gd" or (errorHandler.buildDepError "gd")) ]
          else [
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            ]);
        buildable = true;
        };
      };
    }