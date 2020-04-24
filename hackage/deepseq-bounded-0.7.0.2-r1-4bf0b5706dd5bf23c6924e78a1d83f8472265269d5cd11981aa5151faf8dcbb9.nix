{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      hello_hackage_visitor = false;
      haskell98_fragment = false;
      use_par_patnode = true;
      use_pseq_patnode = true;
      use_trace_patnode = true;
      use_ping_patnode = true;
      use_die_patnode = true;
      use_timing_patnode = true;
      use_par_seqable = true;
      just_alias_gseqable = true;
      just_alias_gnfdatan = false;
      just_alias_gnfdatap = false;
      provide_data_family = true;
      use_curly_brace_instead_of_paren_for_subpatterns = false;
      abbrev_wn_and_tn_concrete_syntax_to_number_alone__safe_only_to_depth_19 = false;
      abbrev_wn_and_tn_concrete_syntax_to_single_digit__can_only_express_down_to_depth_9 = false;
      use_ww_deepseq = true;
      warn_pattern_match_failure = false;
      use_sop = true;
      nfdata_instance_pattern = true;
      use_cpphs = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "deepseq-bounded"; version = "0.7.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Seniuk <rasfar@gmail.com>";
      author = "Andrew G. Seniuk";
      homepage = "http://fremissant.net/deepseq-bounded";
      url = "";
      synopsis = "Bounded deepseq, including support for generic deriving";
      description = "This package provides methods for partially (or fully) evaluating data\nstructures (\\\"bounded deep evaluation\\\").\n\nMore information is available on the project <http://www.fremissant.net/deepseq-bounded homepage>.\nThere may be activity on this <http://www.reddit.com/r/haskell/comments/2pscxh/ann_deepseqbounded_seqaid_leaky/ reddit> discussion, where your comments are invited.\n\nQuoting from the\n<http://hackage.haskell.org/package/deepseq deepseq> package:\n\n\\\"/Artificial forcing is often used for adding strictness to a program, e.g. in order to force pending exceptions, remove space leaks, or force lazy IO to happen. It is also useful in parallel programs, to ensure work does not migrate to the wrong thread./\\\"\n\nSometimes we don't want to, or cannot, force all the way, for instance\nwhen dealing with potentially infinite values of coinductive types.\nAlso, bounded forcing bridges the theoretical axis between shallow seq\nand full deepseq.\n\nWe provide two new classes <http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-NFDataN.html#t:NFDataN NFDataN> and <http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-NFDataP.html#t:NFDataP NFDataP>.\nInstances of these provide bounded deep evaluation for arbitrary polytypic terms:\n\n* <http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-NFDataN.html#t:NFDataN rnfn> bounds the forced evaluation by depth of recursion.\n\n* <http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-NFDataP.html#t:NFDataP rnfp> forces based on patterns (static or dynamic).\n\nInstances of <http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-NFDataN.html NFDataN> and <http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-NFDataP.html NFDataP> can be automatically derived via <http://hackage.haskell.org/package/generics-sop/docs/Generics-SOP.html Generics.SOP>, backed by the <http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-Generic-GNFDataN.html GNFDataN> and <http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-Generic-GNFDataP.html GNFDataP> modules.\n<http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-NFDataN.html NFDataN> can optionally be derived by the standard <http://downloads.haskell.org/~ghc/7.8.3/docs/html/libraries/base-4.7.0.1/GHC-Generics.html GHC.Generics> facility (but not so for <http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-NFDataP.html NFDataP>).\n\nAnother approach is <http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-Seqable.html Seqable>, which is similar to <http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-NFDataN.html NFDataN>,\nbut optimised for use as a dynamically-reconfigurable forcing harness\nin the <http://hackage.haskell.org/package/seqaid seqaid> auto-instrumentation tool.\n\nRecent developments supporting parallelisation control (in <http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-Pattern.html Pattern>\nand <http://hackage.haskell.org/package/deepseq-bounded-0.7.0.0/docs/Control-DeepSeq-Bounded-Seqable.html Seqable> modules) may justify renaming this library to\nsomething which encompasses both strictness and parallelism aspects.\n\n/ NOTE: Versions >=0.6 are substantially different from the original (now deprecated) 0.5.* releases, particularly as regards NFDataP. /";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (flags.use_cpphs) (hsPkgs."cpphs" or ((hsPkgs.pkgs-errors).buildDepError "cpphs"))) ++ (pkgs.lib).optional (!flags.haskell98_fragment) (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))) ++ (pkgs.lib).optionals (flags.use_ww_deepseq) ([
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (!flags.haskell98_fragment) (hsPkgs."deepseq-generics" or ((hsPkgs.pkgs-errors).buildDepError "deepseq-generics")))) ++ (pkgs.lib).optionals (!flags.haskell98_fragment) ((pkgs.lib).optional (flags.use_sop) (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop")))) ++ (pkgs.lib).optionals (!flags.haskell98_fragment) ((pkgs.lib).optional (flags.use_par_seqable) (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel")))) ++ (pkgs.lib).optionals (!flags.haskell98_fragment) ((pkgs.lib).optional (flags.use_par_patnode) (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel")))) ++ (pkgs.lib).optionals (!flags.haskell98_fragment) ((pkgs.lib).optional (flags.use_pseq_patnode) (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel")));
        buildable = true;
        };
      tests = {
        "deepseq-bounded-tests" = {
          depends = ((((((([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq-bounded" or ((hsPkgs.pkgs-errors).buildDepError "deepseq-bounded"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ] ++ (pkgs.lib).optional (flags.use_cpphs) (hsPkgs."cpphs" or ((hsPkgs.pkgs-errors).buildDepError "cpphs"))) ++ (pkgs.lib).optional (!flags.haskell98_fragment) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (!flags.haskell98_fragment) (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))) ++ (pkgs.lib).optionals (flags.use_ww_deepseq) ([
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ] ++ (pkgs.lib).optional (!flags.haskell98_fragment) (hsPkgs."deepseq-generics" or ((hsPkgs.pkgs-errors).buildDepError "deepseq-generics")))) ++ (pkgs.lib).optionals (!flags.haskell98_fragment) ((pkgs.lib).optional (flags.use_sop) (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop")))) ++ (pkgs.lib).optionals (!flags.haskell98_fragment) ((pkgs.lib).optional (flags.use_par_seqable) (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel")))) ++ (pkgs.lib).optionals (!flags.haskell98_fragment) ((pkgs.lib).optional (flags.use_par_patnode) (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel")))) ++ (pkgs.lib).optionals (!flags.haskell98_fragment) ((pkgs.lib).optional (flags.use_pseq_patnode) (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel")));
          buildable = true;
          };
        };
      };
    }