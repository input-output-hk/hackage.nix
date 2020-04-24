{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
          ];
        buildable = true;
        };
      exes = {
        "scyther-proof" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
            ];
          buildable = true;
          };
        };
      };
    }