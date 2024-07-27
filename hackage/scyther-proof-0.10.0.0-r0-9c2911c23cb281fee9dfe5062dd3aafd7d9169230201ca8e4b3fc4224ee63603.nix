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
    flags = { threaded = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "scyther-proof"; version = "0.10.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "Simon Meier, Andreas Lochbihler, ETH Zurich, 2009-2013";
      maintainer = "Simon Meier <iridcode@gmail.com>";
      author = "Simon Meier <iridcode@gmail.com>,\nAndreas Lochbihler <andreas.lochbihler@inf.ethz.ch>";
      homepage = "";
      url = "";
      synopsis = "Automatic generation of Isabelle/HOL correctness proofs\nfor security protocols.";
      description = "scyther-proof is a security protocol verification tool\nbased on an algorithm similar to the Scyther tool developed\nby Cas Cremers\n(<http://people.inf.ethz.ch/cremersc/scyther/index.html>).\nThe theory underlying scyther-proof is described in the\n2013 Journal of Computer Security paper\n\\\"Efficient Construction of\nMachine-Checked Protocol Security Proofs\\\"\nby Meier, Cremers, and Basin available from\n<https://github.com/meiersi/scyther-proof/tree/master/publications>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "scyther-proof" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
          ];
          buildable = true;
        };
      };
    };
  }