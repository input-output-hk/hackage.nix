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
    flags = { rnaforestry = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Forestry"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2017";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, Sarah Berkemer, 2017";
      homepage = "https://github.com/choener/Forestry";
      url = "";
      synopsis = "Comparison of trees and forests.";
      description = "Wikipedia on forestry: \"the science and craft of creating,\nmanaging, using, conserving, and repairing forests and\nassociated resources.\"\n\nThis is a modest starting point and provides just:\n\n* forest alignments\n* tree alignments\n\nBuild this library and executable with GHC-8.0.2\n\nTo enable @RNAforestry@, use @cabal new-build -frnaforestry@ or\n@cabal new-configure -w compiler-path -frnaforestry && cabal\nnew-build@. We suggest using @cabal@ with the nix-style local\nbuild options.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
          (hsPkgs."ADPfusionForest" or (errorHandler.buildDepError "ADPfusionForest"))
          (hsPkgs."BiobaseNewick" or (errorHandler.buildDepError "BiobaseNewick"))
          (hsPkgs."BiobaseTypes" or (errorHandler.buildDepError "BiobaseTypes"))
          (hsPkgs."ForestStructures" or (errorHandler.buildDepError "ForestStructures"))
          (hsPkgs."FormalGrammars" or (errorHandler.buildDepError "FormalGrammars"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          (hsPkgs."PrimitiveArray-Pretty" or (errorHandler.buildDepError "PrimitiveArray-Pretty"))
        ];
        buildable = true;
      };
      exes = {
        "RNAforestry" = {
          depends = pkgs.lib.optionals (flags.rnaforestry) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-utils" or (errorHandler.buildDepError "streaming-utils"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."BiobaseNewick" or (errorHandler.buildDepError "BiobaseNewick"))
            (hsPkgs."ForestStructures" or (errorHandler.buildDepError "ForestStructures"))
            (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
            (hsPkgs."PrimitiveArray-Pretty" or (errorHandler.buildDepError "PrimitiveArray-Pretty"))
            (hsPkgs."Forestry" or (errorHandler.buildDepError "Forestry"))
            (hsPkgs."ViennaRNA-extras" or (errorHandler.buildDepError "ViennaRNA-extras"))
            (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
            (hsPkgs."BiobaseTypes" or (errorHandler.buildDepError "BiobaseTypes"))
          ];
          buildable = if flags.rnaforestry then true else false;
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
            (hsPkgs."Forestry" or (errorHandler.buildDepError "Forestry"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."Forestry" or (errorHandler.buildDepError "Forestry"))
          ];
          buildable = true;
        };
      };
    };
  }