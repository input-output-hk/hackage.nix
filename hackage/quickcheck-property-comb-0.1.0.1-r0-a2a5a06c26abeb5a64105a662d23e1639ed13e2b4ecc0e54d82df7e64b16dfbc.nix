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
      specVersion = "1.10";
      identifier = { name = "quickcheck-property-comb"; version = "0.1.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "jfeltz@gmail.com";
      author = "John Feltz";
      homepage = "http://www.github.com/jfeltz/quickcheck-property-comb";
      url = "";
      synopsis = "Combinators for Quickcheck Property construction and diagnostics";
      description = "These are simple monads that aim to reduce the pain of composing\ninvariants/properties, and the documenting of those\ninvariants for determining the cause of failure.\nSpecifically, they provide a tool for effective diagnostic\nfor invariants with changing post-conditions, leading to a\nfaster cause-of-failure diagnosis.\n\nExample case for invariants on a data structure \"Consumers\".\n\n> data (Ord l) => Consumers l =\n>   Consumers {\n>     introduced :: S.Set l,\n>     met :: M.Map (S.Set l) Bool,\n>     disjoints :: Disjoints l\n>   }\n>\n> introduced_in_disjoint :: Inv (Consumers l)\n> introduced_in_disjoint = do\n>   doc \"all at quantity are a singleton subset in disjoints\"\n>   subsets       <- (map S.singleton) . S.toList . introduced <\$> cause\n>   disjoint_sets <- disjoints <\$> cause\n>   return . and . map ((flip S.member) disjoint_sets) \$ subsets\n>\n> disjoint_sizes ::  Inv (Disjoints l)\n> disjoint_sizes = do\n>  doc . unlines \$\n>    [ \"the intersection of introduced and disjoints are the only allowed\",\n>     \"singleton sets in disjoints\"\n>      ]\n>  disjoints' <- cause\n>  -- Do the checking\n>  return False\n>\n> disjoints_eq :: Inv (Disjoints l)\n> disjoints_eq = do\n>   doc \"disjoint sets are equal in size\"\n>   -- ..\n>   return True\n>\n> disjoints_inv :: Invariants (Disjoints l)\n> disjoints_inv= do\n>   sat disjoints_eq\n>   sat disjoints_sizes\n>\n> inv_consumers :: Invariants (Consumers l)\n> inv_consumers = do\n>   satcomp disjoints disjoints_inv\n>   satcomp met met_inv\n>   sat introduced_in_disjoint\n\nAnd to run the Consumer invariant on generated cases:\n\n> prop_testedFunction :: Arg -> Property\n> prop_testedFunction arg =\n>  let consumers = testedFunction arg in\n>    runInvariants consumers inv_consumers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      };
    }