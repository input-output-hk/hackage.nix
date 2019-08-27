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
    flags = { base4_2 = true; mtl2 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "random-fu"; version = "0.2.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "https://github.com/mokus0/random-fu";
      url = "";
      synopsis = "Random number generation";
      description = "Random number generation based on modeling random\nvariables in two complementary ways: first, by the\nparameters of standard mathematical distributions and,\nsecond, by an abstract type ('RVar') which can be\ncomposed and manipulated monadically and sampled in\neither monadic or \\\"pure\\\" styles.\n\nThe primary purpose of this library is to support\ndefining and sampling a wide variety of high quality\nrandom variables.  Quality is prioritized over speed,\nbut performance is an important goal too.\n\nIn my testing, I have found it capable of speed\ncomparable to other Haskell libraries, but still\na fair bit slower than straight C implementations of\nthe same algorithms.\n\nChanges in 0.2.1.0: Exposed Categorical type (it\nhad been hidden by accident a few version ago),\ngave it a Read instance, and dropped a\nno-longer-necessary Ord context from 'fromWeightedList'.\nThank you Antal Spector-Zabusky for catching these!\n\nChanges in 0.2.0.2: None except setting\n\\\"Buildable: False\\\" under GHC 7.2.1 (see\nflexible-defaults 0.0.0.2 for more detailed\nexplanation).\n\nChanges in 0.2: The old random-fu package has been\nsplit into three parts: random-source, rvar, and this\nnew random-fu.  The end-user interface is mostly the same.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."gamma" or (buildDepError "gamma"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."random-source" or (buildDepError "random-source"))
          (hsPkgs."rvar" or (buildDepError "rvar"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ]) ++ [
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ]) ++ (if system.isWindows
          then [ (hsPkgs."erf-native" or (buildDepError "erf-native")) ]
          else [ (hsPkgs."erf" or (buildDepError "erf")) ]);
        };
      };
    }