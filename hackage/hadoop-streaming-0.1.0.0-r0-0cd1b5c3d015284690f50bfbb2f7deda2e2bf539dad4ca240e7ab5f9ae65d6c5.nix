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
      specVersion = "2.4";
      identifier = { name = "hadoop-streaming"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Ziyang Liu";
      maintainer = "Ziyang Liu <free@cofree.io>";
      author = "Ziyang Liu <free@cofree.io>";
      homepage = "https://github.com/zliu41/hadoop-streaming";
      url = "";
      synopsis = "A simple Hadoop streaming library";
      description = "A simple Hadoop streaming library based on <https://hackage.haskell.org/package/conduit conduit>,\nuseful for writing mapper and reducer logic in Haskell and running it on AWS Elastic MapReduce,\nAzure HDInsight, GCP Dataproc, and so forth.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hadoop-streaming" or (errorHandler.buildDepError "hadoop-streaming"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }