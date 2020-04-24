{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      no-gui = false;
      threaded = true;
      test-coverage = true;
      build-tests = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "tamarin-prover"; version = "0.6.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "Benedikt Schmidt, Simon Meier, ETH Zurich, 2010-2012";
      maintainer = "Simon Meier <simon.meier@inf.ethz.ch>";
      author = "Benedikt Schmidt <benedikt.schmidt@inf.ethz.ch>,\nSimon Meier <simon.meier@inf.ethz.ch>";
      homepage = "http://www.infsec.ethz.ch/research/software#TAMARIN";
      url = "";
      synopsis = "The Tamarin prover for security protocol analysis.";
      description = "The Tamarin prover is a tool for the analysis of security protocols. It\nimplements a constraint solving algorithm that supports both falsification\nand verification of security protocols with respect to an unbounded number\nof sessions. The underlying security protocol model uses multiset\nrewriting to specify protocols and adversary capabilities, a guarded\nfragment of first-order logic to specify security properties, and\nequational theories to model the algebraic properties of cryptographic\noperators.\n\nThe paper describing the theory underlying the Tamarin prover was\naccepted at CSF 2012. Its extended version is available from\n<http://www.infsec.ethz.ch/research/software#TAMARIN>.\n\nThe Tamarin prover supports both a batch analysis mode and the\ninteractive construction of security proofs using a GUI. Example protocols\nand the user guide are installed together with the prover. Just call the\n@tamarin-prover@ executable without any arguments to get more information.\n\nThe Tamarin prover uses maude (<http://maude.cs.uiuc.edu/>) as a\nunification backend and GraphViz (<http://www.graphviz.org/>) to visualize\nconstraint systems. Detailed instructions for installing the Tamarin\nprover are given at <http://www.infsec.ethz.ch/research/software#TAMARIN>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tamarin-prover" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."derive" or ((hsPkgs.pkgs-errors).buildDepError "derive"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."tamarin-prover-utils" or ((hsPkgs.pkgs-errors).buildDepError "tamarin-prover-utils"))
            (hsPkgs."tamarin-prover-term" or ((hsPkgs.pkgs-errors).buildDepError "tamarin-prover-term"))
            ] ++ (pkgs.lib).optionals (!flags.no-gui) [
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            (hsPkgs."yesod-json" or ((hsPkgs.pkgs-errors).buildDepError "yesod-json"))
            (hsPkgs."yesod-static" or ((hsPkgs.pkgs-errors).buildDepError "yesod-static"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."hamlet" or ((hsPkgs.pkgs-errors).buildDepError "hamlet"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."threads" or ((hsPkgs.pkgs-errors).buildDepError "threads"))
            ];
          buildable = true;
          };
        };
      };
    }