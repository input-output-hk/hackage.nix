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
      identifier = { name = "scyther-proof"; version = "0.3.0"; };
      license = "LicenseRef-GPL";
      copyright = "Simon Meier, ETH Zurich, 2009-2011";
      maintainer = "Simon Meier <simon.meier@inf.ethz.ch>";
      author = "Simon Meier <simon.meier@inf.ethz.ch>";
      homepage = "http://www.infsec.ethz.ch/people/meiersi/";
      url = "";
      synopsis = "Automatic generation of Isabelle/HOL correctness proofs for security protocols.";
      description = "scyther-proof is a security protocol verification tool based on a similar\nalgorithm as the Scyther tool developed by Cas Cremers\n(http://people.inf.ethz.ch/cremersc/scyther/index.html). The theory underlying scyther-proof\nis described in the paper \"Strong Invariants for the Efficient Construction\nof Machine-Checked Protocol Security Proofs\" by Meier, Cremers, and Basin.\nParts of the infrastructure underlying scyther-proof are reused in other\nprojects by the same author. Therefore, most of its modules are exported in\nthe corresponding scyther-proof library. However, this library is not yet thought for\ngeneral use. Please contact the author, if you would like to build upon/extend scyther-proof.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
        ];
        buildable = true;
      };
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
          ];
          buildable = true;
        };
      };
    };
  }