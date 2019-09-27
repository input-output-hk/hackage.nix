let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      no-gui = false;
      threaded = true;
      test-coverage = true;
      build-tests = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "tamarin-prover"; version = "0.8.6.3"; };
      license = "LicenseRef-GPL";
      copyright = "Benedikt Schmidt, Simon Meier, ETH Zurich, 2010-2013";
      maintainer = "Simon Meier <simon.meier@inf.ethz.ch>";
      author = "Benedikt Schmidt <benedikt.schmidt@inf.ethz.ch>,\nSimon Meier <simon.meier@inf.ethz.ch>";
      homepage = "http://www.infsec.ethz.ch/research/software/tamarin";
      url = "";
      synopsis = "The Tamarin prover for security protocol analysis.";
      description = "Note that the @tamarin-prover@ should be installed from source as\ndescribed in its README at\n<https://github.com/tamarin-prover/tamarin-prover>.\n\nThe Tamarin prover is a tool for the analysis of security protocols. It\nimplements a constraint solving algorithm that supports both falsification\nand verification of security protocols with respect to an unbounded number\nof sessions. The underlying security protocol model uses multiset\nrewriting to specify protocols and adversary capabilities, a guarded\nfragment of first-order logic to specify security properties, and\nequational theories to model the algebraic properties of cryptographic\noperators.\n\nThe paper describing the theory underlying the Tamarin prover was\naccepted at CSF 2012. Its extended version is available from\n<http://www.infsec.ethz.ch/research/software/tamarin>.\n\nThe Tamarin prover supports both a batch analysis mode and the\ninteractive construction of security proofs using a GUI. Example protocols\nand the user guide are installed together with the prover. Just call the\n@tamarin-prover@ executable without any arguments to get more information.\n\nThe Tamarin prover uses maude (<http://maude.cs.uiuc.edu/>) as a\nunification backend and GraphViz (<http://www.graphviz.org/>) to visualize\nconstraint systems. Detailed instructions for installing the Tamarin\nprover are given at <http://www.infsec.ethz.ch/research/software/tamarin>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tamarin-prover" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."derive" or (buildDepError "derive"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."tamarin-prover-utils" or (buildDepError "tamarin-prover-utils"))
            (hsPkgs."tamarin-prover-term" or (buildDepError "tamarin-prover-term"))
            (hsPkgs."tamarin-prover-theory" or (buildDepError "tamarin-prover-theory"))
            ] ++ (pkgs.lib).optionals (!flags.no-gui) [
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."yesod-json" or (buildDepError "yesod-json"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."threads" or (buildDepError "threads"))
            ];
          buildable = true;
          };
        };
      };
    }