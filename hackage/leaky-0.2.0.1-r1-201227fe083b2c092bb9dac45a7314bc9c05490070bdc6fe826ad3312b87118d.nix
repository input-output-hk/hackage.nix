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
      turn_on_seqaid_plugin = true;
      omnitypic = false;
      test_seqaidpp = true;
      stats = true;
      using_sandbox = false;
      use_second_module = true;
      profile = false;
      use_growing_list = true;
      use_growing_list_reduction = true;
      use_infinite_list = false;
      use_strict_blob = true;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "leaky"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Seniuk <rasfar@gmail.com>";
      author = "Andrew G. Seniuk";
      homepage = "http://fremissant.net/leaky";
      url = "";
      synopsis = "Robust space leak, and its strictification";
      description = "Robust space leak, and its strictification, for testing <http://hackage.haskell.org/package/deepseq-bounded deepseq-bounded> and <http://hackage.haskell.org/package/seqaid seqaid>.\n\nSee also the project <http://www.fremissant.net/leaky homepage> for more information.\n\nPlease share your comments on this <http://www.reddit.com/r/haskell/comments/2pscxh/ann_deepseqbounded_seqaid_leaky/ reddit> discussion.\n\nNOTE: Ignore the anonymous rogue failed build report below (at least, it appeared on all versions I uploaded so far). If you examine the log it's clear that the problem is theirs, and nothing to do with this package or its dependencies. It's a shame this is so prominently displayed and impossible to remedy, it makes unbroken packages seem broken to visitors, and it exerts negative pressure on the use of cpphs (since one can make this rogue report go away by pretending cpphs never existed and depending on the ubiquity of a system-wide cpp).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "leaky" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."deepseq-bounded" or (errorHandler.buildDepError "deepseq-bounded"))
            (hsPkgs."deepseq-generics" or (errorHandler.buildDepError "deepseq-generics"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."seqaid" or (errorHandler.buildDepError "seqaid"))
          ] ++ pkgs.lib.optional (flags.omnitypic) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
          build-tools = [
            (hsPkgs.buildPackages.cpphs.components.exes.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
          buildable = true;
        };
      };
    };
  }