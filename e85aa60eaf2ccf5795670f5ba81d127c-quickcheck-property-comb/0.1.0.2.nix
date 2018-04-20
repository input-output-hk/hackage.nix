{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quickcheck-property-comb";
          version = "0.1.0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "jfeltz@gmail.com";
        author = "John Feltz";
        homepage = "http://www.github.com/jfeltz/quickcheck-property-comb";
        url = "";
        synopsis = "Combinators for Quickcheck Property construction and diagnostics";
        description = "These are simple monads that aim to reduce the pain of composing\ninvariants/properties, and the documenting of those\ninvariants for determining the cause of failure.\nSpecifically, they provide a tool for effective diagnostic\nfor invariants with changing post-conditions, leading to a\nfaster cause-of-failure diagnosis.\n\nExample case for invariants on a data structure Consumers:\n\n> data (Ord l) => Consumers l =\n>   Consumers {\n>     introduced :: S.Set l,\n>     met :: M.Map (S.Set l) Bool,\n>     disjoints :: Disjoints l\n>   }\n>\n> disjoints_odds ::  Inv (Disjoints l)\n> disjoints_odds = do\n>  doc \"no odd sets in disjoints\"\n>  disjoint_sets <- cause\n>  ..\n>  return False\n>\n> disjoints_non_singletons :: Inv (Disjoints l)\n> disjoints_non_singletons = do\n>   ..\n>   return True\n>\n> disjoints_inv :: Invariants (Disjoints l)\n> disjoints_inv= do\n>   sat disjoints_odds\n>   sat disjoints_non_singletons\n>\n> introduced_in_disjoint :: Inv (Consumers l)\n> introduced_in_disjoint = do\n>   doc \"all at quantity are a singleton subset in disjoints\"\n>   subsets       <- (map S.singleton) . S.toList . introduced <\$> cause\n>   disjoint_sets <- disjoints <\$> cause\n>   return . and . map ((flip S.member) disjoint_sets) \$ subsets\n>\n> inv_consumers :: Invariants (Consumers l)\n> inv_consumers = do\n>   satcomp disjoints disjoints_inv\n>   satcomp met met_inv\n>   sat introduced_in_disjoint\n\nAnd to run the invariants on generated cases:\n\n> prop_testedFunction :: Arg -> Property\n> prop_testedFunction arg =\n>  let consumers = testedFunction arg in\n>    runInvariants consumers inv_consumers";
        buildType = "Simple";
      };
      components = {
        quickcheck-property-comb = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.mtl
          ];
        };
      };
    }