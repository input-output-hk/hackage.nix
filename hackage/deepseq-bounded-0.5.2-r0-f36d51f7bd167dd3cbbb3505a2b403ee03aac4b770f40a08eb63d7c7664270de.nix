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
      haskell98_fragment = false;
      parallelism_experiment = true;
      just_alias_gseqable = true;
      use_ww_deepseq = true;
      warn_pattern_match_failure = false;
      use_sop = true;
      nfdata_instance_pattern = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "deepseq-bounded"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Seniuk <rasfar@gmail.com>";
      author = "Andrew G. Seniuk";
      homepage = "http://fremissant.net/deepseq-bounded";
      url = "";
      synopsis = "Bounded deepseq, including support for generic deriving";
      description = "This package provides methods for partially (or fully) evaluating data\nstructures (\\\"bounded deep evaluation\\\").\n\nMore information is available on the project <http://www.fremissant.net/deepseq-bounded homepage>. There may be activity on this <http://www.reddit.com/r/haskell/comments/2pscxh/ann_deepseqbounded_seqaid_leaky/ reddit> discussion, where your comments are invited.\n\nQuoting comments from the\n<https://hackage.haskell.org/package/deepseq deepseq> package:\n\n\\\"/Artificial forcing is often used for adding strictness to a program, e.g. in order to force pending exceptions, remove space leaks, or force lazy IO to happen. It is also useful in parallel programs, to ensure work does not migrate to the wrong thread./\\\"\n\nSometimes we don't want to, or cannot, force all the way.\nAny infinite recursive type is an example. Also, bounded forcing\nbridges the theoretical axis between shallow seq and full deepseq.\n\nWe provide two new classes \"NFDataN\" and \"NFDataP\". Instances of these\nprovide bounded deep evaluation for arbitrary polytypic terms:\n\n* 'rnfn' bounds the forced evaluation by depth of recursion.\n\n* 'rnfp' forces based on patterns (static or dynamic).\n\nInstances of \"NFDataN\" and \"NFDataP\" can be automatically derived via\n\"Generics.SOP\", backed by the \"GNFDataN\" and \"GNFDataP\" modules.\n\nAnother approach is \"Seqable\", which is similar to \"NFDataN\",\nbut optimised for use as a dynamically-reconfigurable forcing harness\nin the <https://hackage.haskell.org/package/seqaid seqaid> auto-instrumentation tool.\n\nRecent developments supporting parallelisation control (in \"Pattern\"\nand \"Seqable\" modules) may justify renaming this library to\nsomething which emcompasses both strictness and parallelism aspects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (!flags.haskell98_fragment) (hsPkgs."syb" or (buildDepError "syb"))) ++ (pkgs.lib).optionals (flags.use_ww_deepseq) ([
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (!flags.haskell98_fragment) (hsPkgs."deepseq-generics" or (buildDepError "deepseq-generics")))) ++ (pkgs.lib).optionals (!flags.haskell98_fragment) ((pkgs.lib).optional (flags.use_sop) (hsPkgs."generics-sop" or (buildDepError "generics-sop")))) ++ (pkgs.lib).optional (flags.parallelism_experiment) (hsPkgs."parallel" or (buildDepError "parallel"));
        };
      tests = {
        "deepseq-bounded-tests" = {
          depends = (((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq-bounded" or (buildDepError "deepseq-bounded"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ] ++ (pkgs.lib).optional (!flags.haskell98_fragment) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (!flags.haskell98_fragment) (hsPkgs."syb" or (buildDepError "syb"))) ++ (pkgs.lib).optionals (flags.use_ww_deepseq) ([
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ] ++ (pkgs.lib).optional (!flags.haskell98_fragment) (hsPkgs."deepseq-generics" or (buildDepError "deepseq-generics")))) ++ (pkgs.lib).optionals (!flags.haskell98_fragment) ((pkgs.lib).optional (flags.use_sop) (hsPkgs."generics-sop" or (buildDepError "generics-sop")))) ++ (pkgs.lib).optional (flags.parallelism_experiment) (hsPkgs."parallel" or (buildDepError "parallel"));
          };
        };
      };
    }