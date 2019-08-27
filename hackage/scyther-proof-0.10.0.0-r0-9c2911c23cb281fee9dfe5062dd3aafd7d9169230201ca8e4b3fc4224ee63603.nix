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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
            ];
          };
        };
      };
    }