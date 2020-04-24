{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      turn_on_seqaid_plugin = true;
      omnitypic = false;
      test_seqaidpp = true;
      stats = true;
      using_sandbox = false;
      use_second_module = true;
      profile = true;
      use_growing_list = true;
      use_growing_list_reduction = true;
      use_infinite_list = false;
      use_strict_blob = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "leaky"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Seniuk <rasfar@gmail.com>";
      author = "Andrew G. Seniuk";
      homepage = "http://www.fremissant.net/leaky";
      url = "";
      synopsis = "Robust space leak, and its strictification";
      description = "Robust space leak, and its strictification, for testing <http://hackage.haskell.org/package/deepseq-bounded deepseq-bounded> and <http://hackage.haskell.org/package/seqaid seqaid>.\n\nSee also the project <http://www.fremissant.net/leaky homepage> for more information.\n\nPlease share your comments on this <http://www.reddit.com/r/haskell/comments/2pscxh/ann_deepseqbounded_seqaid_leaky/ reddit> discussion.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "leaky" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."deepseq-bounded" or ((hsPkgs.pkgs-errors).buildDepError "deepseq-bounded"))
            (hsPkgs."deepseq-generics" or ((hsPkgs.pkgs-errors).buildDepError "deepseq-generics"))
            (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."seqaid" or ((hsPkgs.pkgs-errors).buildDepError "seqaid"))
            ] ++ (pkgs.lib).optional (flags.omnitypic) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
          buildable = true;
          };
        };
      };
    }