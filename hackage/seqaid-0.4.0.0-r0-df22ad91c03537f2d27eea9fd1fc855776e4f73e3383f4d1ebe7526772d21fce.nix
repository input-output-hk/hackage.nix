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
      hello_hackage_visitor = false;
      ghc_710 = false;
      sai_fork = false;
      try_inject_noinline_on_requested_binds = false;
      seqable_only = false;
      th_type_in_types_ann = false;
      seqaidpp_types = true;
      infer_top_level_types = false;
      demo_mode = true;
      dbg_seqaid = true;
      no_top_level_seqinj_dummies = false;
      nfdatan_only = false;
      show_type = true;
      use_cpphs = true;
      };
    package = {
      specVersion = "1.18";
      identifier = { name = "seqaid"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Seniuk <rasfar@gmail.com>";
      author = "Andrew G. Seniuk";
      homepage = "http://fremissant.net/seqaid";
      url = "";
      synopsis = "Dynamic strictness control, including space leak repair";
      description = "Seqaid is a GHC plugin providing non-invasive auto-instrumentation of Haskell projects, for dynamic strictness (and parallelism) control. This will soon include optimisation for automated space leak relief using minimal strictification. [The optimiser is still in development however.]\n\nRefer to the seqaid <http://www.fremissant.net/seqaid homepage> for more information.\n\nPlease share your comments on this <http://www.reddit.com/r/haskell/comments/2pscxh/ann_deepseqbounded_seqaid_leaky/ reddit> discussion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq-bounded" or (buildDepError "deepseq-bounded"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ] ++ [
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ]) ++ (pkgs.lib).optional (flags.use_cpphs) (hsPkgs."cpphs" or (buildDepError "cpphs"))) ++ [
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ]) ++ (pkgs.lib).optional (flags.seqable_only) (hsPkgs."generics-sop" or (buildDepError "generics-sop"))) ++ (pkgs.lib).optionals (!flags.demo_mode) [
          (hsPkgs."hashtables" or (buildDepError "hashtables"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ];
        };
      exes = {
        "seqaid" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            ] ++ (pkgs.lib).optional (flags.use_cpphs) (hsPkgs."cpphs" or (buildDepError "cpphs"));
          };
        "seqaidpp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            ] ++ (pkgs.lib).optional (flags.use_cpphs) (hsPkgs."cpphs" or (buildDepError "cpphs"));
          };
        };
      };
    }