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
      identifier = { name = "scyther-proof"; version = "0.3.1"; };
      license = "LicenseRef-GPL";
      copyright = "Simon Meier, ETH Zurich, 2009-2011";
      maintainer = "Simon Meier <simon.meier@inf.ethz.ch>";
      author = "Simon Meier <simon.meier@inf.ethz.ch>";
      homepage = "http://www.infsec.ethz.ch/people/meiersi/";
      url = "";
      synopsis = "Automatic generation of Isabelle/HOL correctness proofs for security protocols.";
      description = "scyther-proof is a security protocol verification tool\nbased on an algorithm similar to the Scyther tool developed\nby Cas Cremers\n(<http://people.inf.ethz.ch/cremersc/scyther/index.html>).\nThe theory underlying scyther-proof is described in the\npaper \\\"Strong Invariants for the Efficient Construction of\nMachine-Checked Protocol Security Proofs\\\" by Meier,\nCremers, and Basin available from\n<http://people.inf.ethz.ch/meiersi/publications/index.html>\n\nParts of the infrastructure underlying scyther-proof are\nreused in other projects by the same author. Therefore,\nmost of its modules are exported in the corresponding\nscyther-proof library. However, this library is not yet\nthought for general use. Please contact the author, if you\nwould like to build upon/extend scyther-proof.";
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