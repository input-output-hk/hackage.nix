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
      identifier = { name = "diversity"; version = "0.4.0.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "gregory.schwartz@drexel.edu";
      author = "Gregory W. Schwartz";
      homepage = "https://github.com/GregorySchwartz/diversity";
      url = "";
      synopsis = "Return the diversity at each position for all sequences in a fasta file";
      description = "Find the diversity of a collection of entities, mainly for use with fasta sequences. Produces a binary which works on fasta files to find the diversity of any order and rarefaction curves for a sliding window across all positions in the sequences. To analyze just a collection of entities, just use the whole sequences and list flag.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."fasta" or (errorHandler.buildDepError "fasta"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
        ];
        buildable = true;
      };
      exes = {
        "diversity" = {
          depends = [
            (hsPkgs."diversity" or (errorHandler.buildDepError "diversity"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."fasta" or (errorHandler.buildDepError "fasta"))
          ];
          buildable = true;
        };
      };
    };
  }