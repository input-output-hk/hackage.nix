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
      specVersion = "1.6";
      identifier = { name = "flowsim"; version = "0.3.4"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://biohaskell.org/Applications/FlowSim";
      url = "";
      synopsis = "Simulate 454 pyrosequencing";
      description = "Provides clonesim, a clone simulator that simulates shotgun\ngenomic clones, and flowsim, that takes the output from clonesim\n(or any other Fasta-formatted file) and generates simulated\nreads from them mimicing Roche's 454 pyrosequencing technology,\nwriting output in 454's native SFF format.  The flowgram\ngeneration is based on empirical distributions derived from real\ndata (although analytic distributions are available too, if you\nprefer).\n\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/flowsim>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "flowsim" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."biofasta" or (buildDepError "biofasta"))
            (hsPkgs."biocore" or (buildDepError "biocore"))
            (hsPkgs."biosff" or (buildDepError "biosff"))
            ];
          };
        "hplc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "clonesim" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          };
        "kitsim" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          };
        "mutator" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          };
        "duplicator" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "gelfilter" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "filtersff" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        };
      };
    }