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
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "free-theorems-counterexamples";
        version = "0.3.0.1";
        };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ds@iai.uni-bonn.de";
      author = "Daniel Seidel, Joachim Breitner";
      homepage = "";
      url = "";
      synopsis = "Automatically Generating Counterexamples to Naive Free Theorems";
      description = "This program is to verify (or to put into question) strictness conditions\non free theorems that arise if a polymorphic lambda calculus is\tenriched by\ngeneral recursion.\nGiven a type the program either returns an instance of the corresponding\nunrestricted free theorem that does not hold and thereby verifies the need\nof the additional restrictions or it returns without finding such an\ninstantiation and thereby suggests (but not proves) that the strictness\nconditions are superfluous.\nThe underlying algorithm is described in \\\"Automatically Generating\nCounterexamples to Naive Free Theorems\\\" (FLOPS'10) by Daniel Seidel and Janis\nVoigtländer.\nA webinterface for the program is also available at\n<http://www-ps.iai.uni-bonn.de/cgi-bin/exfind.cgi>.\n\nRelated to this package you may be interested in the online free theorem generator\nat <http://www-ps.iai.uni-bonn.de/ft> that is also available offline via\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/free-theorems-webui>.\nAlso interesting may be the tool polyseq that generates \\\"optimal\\\" free theorems in a\npolymorphic lambda calculus with selective strictness.\nPolyseq can be downloaded at\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/polyseq>\nbut the functionality is as well provided via a webinterface at\n<http://www-ps.iai.uni-bonn.de/cgi-bin/polyseq.cgi>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        };
      exes = {
        "counterexamples.cgi" = {
          depends = [
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."free-theorems" or (buildDepError "free-theorems"))
            ];
          };
        };
      };
    }