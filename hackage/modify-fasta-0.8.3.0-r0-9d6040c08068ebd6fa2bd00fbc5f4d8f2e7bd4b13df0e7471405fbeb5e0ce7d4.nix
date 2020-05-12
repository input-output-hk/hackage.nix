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
      identifier = { name = "modify-fasta"; version = "0.8.3.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "GregorySchwartz";
      homepage = "https://github.com/GregorySchwartz/modify-fasta";
      url = "";
      synopsis = "Modify fasta (and CLIP) files in several optional ways";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fasta" or (errorHandler.buildDepError "fasta"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."regex-tdfa-text" or (errorHandler.buildDepError "regex-tdfa-text"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          ];
        buildable = true;
        };
      exes = {
        "modify-fasta" = {
          depends = [
            (hsPkgs."modify-fasta" or (errorHandler.buildDepError "modify-fasta"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fasta" or (errorHandler.buildDepError "fasta"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-text" or (errorHandler.buildDepError "pipes-text"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }