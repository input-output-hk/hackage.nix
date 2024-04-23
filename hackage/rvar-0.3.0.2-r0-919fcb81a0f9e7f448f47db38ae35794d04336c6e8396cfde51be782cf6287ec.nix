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
    flags = { mtl2 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rvar"; version = "0.3.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Dominic Steinitz <dominic@steinitz.org>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/haskell-numerics/random-fu";
      url = "";
      synopsis = "Random Variables";
      description = "Random number generation based on modeling random\nvariables by an abstract type ('RVar') which can be\ncomposed and manipulated monadically and sampled in\neither monadic or \\\"pure\\\" styles.\n\nThe primary purpose of this library is to support\ndefining and sampling a wide variety of high quality\nrandom variables.  Quality is prioritized over speed,\nbut performance is an important goal too.\n\nIn my testing, I have found it capable of speed\ncomparable to other Haskell libraries, but still\na fair bit slower than straight C implementations of\nthe same algorithms.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."MonadPrompt" or (errorHandler.buildDepError "MonadPrompt"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ] ++ [ (hsPkgs."mtl" or (errorHandler.buildDepError "mtl")) ];
        buildable = true;
      };
    };
  }