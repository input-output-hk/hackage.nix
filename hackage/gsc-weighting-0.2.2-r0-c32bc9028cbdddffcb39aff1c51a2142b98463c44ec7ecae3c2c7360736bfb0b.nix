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
      identifier = { name = "gsc-weighting"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Almeida Lessa";
      homepage = "";
      url = "";
      synopsis = "Generic implementation of Gerstein/Sonnhammer/Chothia weighting.";
      description = "In their 1994 paper \\\"Volume Changes in Protein Evolution\\\",\nGerstein, Sonnhammer and Chothia developed a weighting\nprocedure for protein sequences to avoid over-represented\nsequences in the appendix \\\"A Method to Weight Protein\nSequences to Correct for Unequal Representation\\\".  Although\ntheir method was developed for protein sequences, it is readily\nextended to work on any measurable set.\n\nThis package calculates GSC weights for any reasonable\ndendrogram.  If you want to recreate their algorithm, then just\nuse @UPGMA@ as linkage and residue identity as distance\nfunction when creating the dendrogram.\n\nChanges in version 0.2:\n\n* Updated to work with @hierarchical-clustering@ 0.4.\n\nChanges in version 0.1.1.1:\n\n* Use an stricter upper bound on @hierachical-clustering@.\n\nChanges in version 0.1.1:\n\n* Now works even when some (or all) branches have distance zero\n(i.e. elements below that branches are all equal with respect\nto distance metric that was used to create the dendrogram).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hierarchical-clustering" or (errorHandler.buildDepError "hierarchical-clustering"))
        ];
        buildable = true;
      };
    };
  }