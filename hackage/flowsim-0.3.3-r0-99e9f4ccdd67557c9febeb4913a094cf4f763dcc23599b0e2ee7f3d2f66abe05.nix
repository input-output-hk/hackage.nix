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
      identifier = { name = "flowsim"; version = "0.3.3"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://biohaskell.org/Applications/FlowSim";
      url = "";
      synopsis = "Simulate 454 pyrosequencing";
      description = "Provides clonesim, a clone simulator that simulates shotgun\ngenomic clones, and flowsim, that takes the output from clonesim\n(or any other Fasta-formatted file) and generates simulated\nreads from them mimicing Roche's 454 pyrosequencing technology,\nwriting output in 454's native SFF format.  The flowgram\ngeneration is based on empirical distributions derived from real\ndata (although analytic distributions are available too, if you\nprefer).\n\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/flowsim>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "flowsim" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."biofasta" or (errorHandler.buildDepError "biofasta"))
            (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
            (hsPkgs."biosff" or (errorHandler.buildDepError "biosff"))
            ];
          buildable = true;
          };
        "hplc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "clonesim" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            ];
          buildable = true;
          };
        "kitsim" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        "mutator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        "duplicator" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "gelfilter" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "filtersff" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }