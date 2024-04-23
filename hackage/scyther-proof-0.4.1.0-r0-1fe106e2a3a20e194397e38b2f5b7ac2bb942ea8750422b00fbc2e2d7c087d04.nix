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
      identifier = { name = "scyther-proof"; version = "0.4.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "Simon Meier, ETH Zurich, 2009-2011";
      maintainer = "Simon Meier <simon.meier@inf.ethz.ch>";
      author = "Simon Meier <simon.meier@inf.ethz.ch>";
      homepage = "http://www.infsec.ethz.ch/people/meiersi/";
      url = "";
      synopsis = "Automatic generation of Isabelle/HOL correctness proofs for security protocols.";
      description = "scyther-proof is a security protocol verification tool\nbased on an algorithm similar to the Scyther tool developed\nby Cas Cremers\n(<http://people.inf.ethz.ch/cremersc/scyther/index.html>).\nThe theory underlying scyther-proof is described in the\npaper \\\"Strong Invariants for the Efficient Construction of\nMachine-Checked Protocol Security Proofs\\\" by Meier,\nCremers, and Basin available from\n<http://people.inf.ethz.ch/meiersi/publications/index.html>";
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
          ];
          buildable = true;
        };
      };
    };
  }