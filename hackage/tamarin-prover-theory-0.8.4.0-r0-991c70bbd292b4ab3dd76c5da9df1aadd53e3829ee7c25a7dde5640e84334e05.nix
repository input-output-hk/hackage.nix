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
      identifier = { name = "tamarin-prover-theory"; version = "0.8.4.0"; };
      license = "LicenseRef-GPL";
      copyright = "Benedikt Schmidt, Simon Meier, ETH Zurich, 2010-2012";
      maintainer = "Benedikt Schmidt <benedikt.schmidt@inf.ethz.ch>";
      author = "Benedikt Schmidt <benedikt.schmidt@inf.ethz.ch>,\nSimon Meier <simon.meier@inf.ethz.ch>";
      homepage = "http://www.infsec.ethz.ch/research/software/tamarin";
      url = "";
      synopsis = "Term manipulation library for the tamarin prover.";
      description = "This is an internal library of the Tamarin prover for\nsecurity protocol verification\n(<hackage.haskell.org/package/tamarin-prover>).\n\nThis library provides the types to represent security\nprotocol, and it implements the constraint solver.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."tamarin-prover-utils" or (errorHandler.buildDepError "tamarin-prover-utils"))
          (hsPkgs."tamarin-prover-term" or (errorHandler.buildDepError "tamarin-prover-term"))
          ];
        buildable = true;
        };
      };
    }