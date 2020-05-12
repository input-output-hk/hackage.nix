{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      hello_hackage_visitor = false;
      ghc_710 = false;
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
      };
    package = {
      specVersion = "1.16";
      identifier = { name = "seqaid"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Seniuk <rasfar@gmail.com>";
      author = "Andrew G. Seniuk";
      homepage = "http://fremissant.net/seqaid";
      url = "";
      synopsis = "Dynamic strictness control, including space leak repair";
      description = "Seqaid is a GHC plugin for non-invasive auto-instrumentation of dynamic strictness (and parallelism) control, shortly to include optimisation for automated space leak relief using minimal strictification. [The optimiser is still in development however.]\n\nRefer to the seqaid <http://www.fremissant.net/seqaid homepage> for more information.\n\nPlease share your comments on this <http://www.reddit.com/r/haskell/comments/2pscxh/ann_deepseqbounded_seqaid_leaky/ reddit> discussion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          (hsPkgs."deepseq-bounded" or (errorHandler.buildDepError "deepseq-bounded"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ [
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ]) ++ [
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ]) ++ (pkgs.lib).optional (flags.seqable_only) (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))) ++ (pkgs.lib).optionals (!flags.demo_mode) [
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      exes = {
        "seqaid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        "seqaidpp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ];
          buildable = true;
          };
        };
      };
    }