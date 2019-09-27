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
      specVersion = "1.16";
      identifier = { name = "leaky"; version = "0.2.1.0"; };
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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cpphs" or (buildDepError "cpphs"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."deepseq-bounded" or (buildDepError "deepseq-bounded"))
            (hsPkgs."deepseq-generics" or (buildDepError "deepseq-generics"))
            (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."seqaid" or (buildDepError "seqaid"))
            ] ++ (pkgs.lib).optional (flags.omnitypic) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
          build-tools = [
            (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (buildToolDepError "cpphs")))
            ];
          buildable = true;
          };
        };
      };
    }