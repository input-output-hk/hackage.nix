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
    flags = { debug = false; debugoutput = false; };
    package = {
      specVersion = "1.10.0";
      identifier = { name = "MutationOrder"; version = "0.0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2017";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Maria Beatriz Walter Costa, Christian Hoener zu Siederdissen, 2017";
      homepage = "https://github.com/choener/MutationOrder";
      url = "";
      synopsis = "Most likely order of mutation events in RNA";
      description = "Determine the most likely order in which single nucleotide\nmutations happened between two RNA sequences.\n\nDeveloped to analyse the @HAR 1@ region.\n\nAs long as the two input RNAs are small enough enough (couple\nhundred nucleotides) and the number of mutations is small\nenough (around 20-26, since the algorithm is exponential in\nthis number) the algorithm should work for similar problems\nwithout changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cereal-vector" or (errorHandler.buildDepError "cereal-vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."serialize-instances" or (errorHandler.buildDepError "serialize-instances"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-strategies" or (errorHandler.buildDepError "vector-strategies"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
          (hsPkgs."ADPfusionSet" or (errorHandler.buildDepError "ADPfusionSet"))
          (hsPkgs."bimaps" or (errorHandler.buildDepError "bimaps"))
          (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
          (hsPkgs."DPutils" or (errorHandler.buildDepError "DPutils"))
          (hsPkgs."FormalGrammars" or (errorHandler.buildDepError "FormalGrammars"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          (hsPkgs."PrimitiveArray-Pretty" or (errorHandler.buildDepError "PrimitiveArray-Pretty"))
          (hsPkgs."ShortestPathProblems" or (errorHandler.buildDepError "ShortestPathProblems"))
          (hsPkgs."ViennaRNA-bindings" or (errorHandler.buildDepError "ViennaRNA-bindings"))
          ];
        buildable = true;
        };
      exes = {
        "MutationOrder" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."MutationOrder" or (errorHandler.buildDepError "MutationOrder"))
            ];
          buildable = true;
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."MutationOrder" or (errorHandler.buildDepError "MutationOrder"))
            ];
          buildable = true;
          };
        };
      };
    }