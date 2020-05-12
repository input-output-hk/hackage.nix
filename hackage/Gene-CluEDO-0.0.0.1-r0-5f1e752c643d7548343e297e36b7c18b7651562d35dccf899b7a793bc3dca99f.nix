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
      specVersion = "1.10.0";
      identifier = { name = "Gene-CluEDO"; version = "0.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2017";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2017";
      homepage = "https://github.com/choener/Gene-CluEDO";
      url = "";
      synopsis = "Hox gene clustering";
      description = "Gene Cluster Evolution Determined Order\n\nCalculate the most likely order of genes in a gene cluster.\n\nApart from being an interesting problem in computational\nbiology, it also serves as an example problem for dynamic\nprogramming over unordered sets with interfaces.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
          (hsPkgs."ADPfusionSet" or (errorHandler.buildDepError "ADPfusionSet"))
          (hsPkgs."FormalGrammars" or (errorHandler.buildDepError "FormalGrammars"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          (hsPkgs."PrimitiveArray-Pretty" or (errorHandler.buildDepError "PrimitiveArray-Pretty"))
          (hsPkgs."ShortestPathProblems" or (errorHandler.buildDepError "ShortestPathProblems"))
          ];
        buildable = true;
        };
      exes = {
        "GeneCluEDO" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."Gene-CluEDO" or (errorHandler.buildDepError "Gene-CluEDO"))
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
            (hsPkgs."Gene-CluEDO" or (errorHandler.buildDepError "Gene-CluEDO"))
            ];
          buildable = true;
          };
        };
      };
    }