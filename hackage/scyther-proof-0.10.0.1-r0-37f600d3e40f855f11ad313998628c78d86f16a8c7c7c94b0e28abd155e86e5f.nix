{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { threaded = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "scyther-proof"; version = "0.10.0.1"; };
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
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
            ];
          buildable = true;
          };
        };
      };
    }