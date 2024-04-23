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
      specVersion = "1.8";
      identifier = { name = "HSoM"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2015 Paul Hudak and Donya Quick";
      maintainer = "Donya Quick <donyaquick@gmail.com>";
      author = "Paul Hudak <paul.hudak@yale.edu>,\nDonya Quick <donyaquick@gmail.com>,\nDan Winograd-Cort <daniel.winograd-cort@yale.edu>";
      homepage = "http://www.euterpea.com";
      url = "";
      synopsis = "Library for computer music education";
      description = "Supporting library for the Haskell School of Music textbook.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."HCodecs" or (errorHandler.buildDepError "HCodecs"))
          (hsPkgs."Euterpea" or (errorHandler.buildDepError "Euterpea"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."markov-chain" or (errorHandler.buildDepError "markov-chain"))
          (hsPkgs."pure-fft" or (errorHandler.buildDepError "pure-fft"))
          (hsPkgs."UISF" or (errorHandler.buildDepError "UISF"))
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.10") [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
    };
  }