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
      specVersion = "1.2";
      identifier = { name = "category-extras"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Daniel Wagner,\nCopyright (C) 2008 Edward A. Kmett,\nCopyright (C) 2004--2008 Dave Menendez,\nCopyright (C) 2007 Iavor Diatchki";
      maintainer = "Daniel Wagner <daniel@wagner-home.com>";
      author = "Edward A. Kmett";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "A meta-package documenting various packages inspired by category theory";
      description = "The obsolete @category-extras@ package provided a monolithic set\nof modules designed for the use of category theory in Haskell.\nIt was exploded into more focused, self-contained packages\n(listed in the dependencies below); this meta-package documents\nwhere the code has gone. In addition to the core definitions,\nthe original category-extras library included several concrete\ndata types as instances of the core concepts. These are now\navailable from the following packages:\n\n* data-lens\n\n* data-lens-fd\n\n* data-lens-template\n\n* eq\n\n* representable-tries\n\n* streams\n\n* vector-instances\n\nThere are two overviews below. The first is a quick,\ndependency-order graphical overview of packages. The second is a\nmore detailed (but very incomplete -- help me complete it!)\noverview mapping each module in the old package into its new\nlocation in the new hierarchy. Not all modules have exact\nanalogs; where possible, similar alternatives are listed.\n\n<<http://dmwit.com/category-extras/dependencies-1.0.2.png>>\n\n> Control\n>     Control.Allegory: use alternative profunctors-Data.Profunctor\n>     Applicative\n>         Control.Applicative.Parameterized\n>     Arrow\n>         Control.Arrow.BiKleisli\n>         Control.Arrow.CoKleisli: comonad-Control.Comonad\n>     Control.Category: base-Control.Category\n>         Control.Category.Associative: categories-Control.Category.Associative\n>         Control.Category.Braided: categories-Control.Category.Braided\n>         Control.Category.Cartesian: categories-Control.Category.Cartesian\n>             Control.Category.Cartesian.Closed: categories-Control.Category.Cartesian.Closed\n>         Control.Category.Discrete: categories-Control.Category.Discrete\n>         Control.Category.Distributive: categories-Control.Category.Distributive\n>         Control.Category.Dual: categories-Control.Category.Dual\n>         Control.Category.Hask: just use \"(->)\" instead of \"Hask\"\n>         Control.Category.Monoidal: categories-Control.Category.Monoidal\n>         Control.Category.Object: categories-Control.Categorical.Object\n>     Control.Comonad: comonad-Control.Comonad\n>         Control.Comonad.Cofree: free-Control.Comonad.Cofree\n>         Control.Comonad.Coideal\n>         Control.Comonad.Context: comonad-transformers-Control.Comonad.Trans.Store\n>         Control.Comonad.Density: kan-extensions-Control.Comonad.Density\n>         Control.Comonad.Exponent: comonad-transformers-Control.Comonad.Trans.Trace\n>         Control.Comonad.Fix: comonad-Control.Comonad\n>         Control.Comonad.HigherOrder\n>         Control.Comonad.Indexed: indexed-Control.Comonad.Indexed\n>         Control.Comonad.Parameterized\n>         Control.Comonad.Pointer: comonad-extras-Control.Comonad.Store.Pointer\n>         Control.Comonad.Reader: comonad-transformers-Control.Comonad.Trans.Env\n>         Control.Comonad.Stream: use alternative package streams\n>         Control.Comonad.Supply\n>         Control.Comonad.Trans: comonad-transformers-Control.Comonad.Trans.Class\n>     Control.Dyad\n>     Control.Functor: bifunctors-Data.Bifunctor\n>         Control.Functor.Adjunction: adjunctions-Data.Functor.Adjunction\n>             Control.Functor.Adjunction.HigherOrder\n>         Control.Functor.Algebra\n>         Control.Functor.Algebra.Elgot: recursion-schemes-Data.Functor.Foldable\n>         Control.Functor.Categorical: categories-Control.Categorical.Functor\n>         Combinators\n>             Control.Functor.Combinators.Biff\n>             Control.Functor.Combinators.Const\n>             Control.Functor.Combinators.Flip\n>             Control.Functor.Combinators.Join\n>             Control.Functor.Combinators.Lift\n>             Control.Functor.Combinators.Of\n>         Control.Functor.Composition: transformers-Data.Functor.Compose and comonad-transformers-Data.Functor.Composition\n>         Control.Functor.Cone\n>         Control.Functor.Contra: contravariant-Data.Functor.Contravariant\n>         Control.Functor.Exponential: invariant-Data.Functor.Invariant\n>         Control.Functor.Extras: distributive-Data.Distributive, semigroupoids-Data.Functor.Plus, and semigroupoids-Data.Functor.Alt\n>         Control.Functor.Fix: recursion-schemes-Data.Functor.Foldable\n>         Control.Functor.Full\n>         Control.Functor.HigherOrder\n>             Control.Functor.HigherOrder.Composition\n>         Control.Functor.Indexed: indexed-Data.Functor.Indexed\n>         Control.Functor.KanExtension: kan-extensions-Data.Functor.KanExtension\n>             Control.Functor.KanExtension.Interpreter\n>         Control.Functor.Lambek\n>         Control.Functor.Limit\n>         Control.Functor.Pointed: pointed-Data.Pointed and pointed-Data.Copointed\n>             Control.Functor.Pointed.Composition: pointed-Data.Pointed and pointed-Data.Copointed\n>         Control.Functor.Representable: representable-functors-Data.Functor.Representable\n>         Control.Functor.Strong\n>         Control.Functor.Yoneda: kan-extensions-Data.Functor.Yoneda\n>         Control.Functor.Zap: keys-Data.Key\n>         Control.Functor.Zip: keys-Data.Key\n>     Monad\n>         Control.Monad.Categorical: pointed-Data.Pointed and semigroupoids-Data.Functor.Bind\n>         Control.Monad.Codensity: kan-extensions-Control.Monad.Codensity\n>         Control.Monad.Either: either-Control.Monad.Trans.Either\n>         Control.Monad.Free: free-Control.Monad.Free\n>         Control.Monad.HigherOrder\n>         Control.Monad.Hyper\n>         Control.Monad.Ideal\n>         Control.Monad.Indexed: indexed-Control.Monad.Indexed\n>             Control.Monad.Indexed.Cont: indexed-extras-Control.Monad.Indexed.Cont\n>             Control.Monad.Indexed.Fix: indexed-Control.Monad.Indexed.Fix\n>             Control.Monad.Indexed.State: indexed-extras-Control.Monad.Indexed.State\n>             Control.Monad.Indexed.Trans: indexed-Control.Monad.Indexed.Trans\n>         Control.Monad.Parameterized\n>     Morphism\n>         Control.Morphism.Ana: recursion-schemes-Data.Functor.Foldable\n>         Control.Morphism.Apo: recursion-schemes-Data.Functor.Foldable\n>         Control.Morphism.Build\n>         Control.Morphism.Cata: recursion-schemes-Data.Functor.Foldable\n>         Control.Morphism.Chrono\n>         Control.Morphism.Destroy\n>         Control.Morphism.Dyna\n>         Control.Morphism.Exo\n>         Control.Morphism.Futu: recursion-schemes-Data.Functor.Foldable\n>         Control.Morphism.Histo: recursion-schemes-Data.Functor.Foldable\n>         Control.Morphism.Hylo: recursion-schemes-Data.Functor.Foldable\n>         Meta\n>             Control.Morphism.Meta.Erwig\n>             Control.Morphism.Meta.Gibbons\n>         Control.Morphism.Para: recursion-schemes-Data.Functor.Foldable\n>         Control.Morphism.Postpro: recursion-schemes-Data.Functor.Foldable\n>         Control.Morphism.Prepro: recursion-schemes-Data.Functor.Foldable\n>         Control.Morphism.Span\n>         Control.Morphism.Synchro\n>         Control.Morphism.Universal\n>         Control.Morphism.Zygo: recursion-schemes-Data.Functor.Foldable\n> Data\n>     Data.Void: void-Data.Void";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."categories" or (buildDepError "categories"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."comonad-extras" or (buildDepError "comonad-extras"))
          (hsPkgs."comonads-fd" or (buildDepError "comonads-fd"))
          (hsPkgs."comonad-transformers" or (buildDepError "comonad-transformers"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."groupoids" or (buildDepError "groupoids"))
          (hsPkgs."indexed" or (buildDepError "indexed"))
          (hsPkgs."indexed-extras" or (buildDepError "indexed-extras"))
          (hsPkgs."invariant" or (buildDepError "invariant"))
          (hsPkgs."kan-extensions" or (buildDepError "kan-extensions"))
          (hsPkgs."keys" or (buildDepError "keys"))
          (hsPkgs."monad-products" or (buildDepError "monad-products"))
          (hsPkgs."pointed" or (buildDepError "pointed"))
          (hsPkgs."profunctor-extras" or (buildDepError "profunctor-extras"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."recursion-schemes" or (buildDepError "recursion-schemes"))
          (hsPkgs."reducers" or (buildDepError "reducers"))
          (hsPkgs."representable-functors" or (buildDepError "representable-functors"))
          (hsPkgs."representable-profunctors" or (buildDepError "representable-profunctors"))
          (hsPkgs."semigroupoid-extras" or (buildDepError "semigroupoid-extras"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."void" or (buildDepError "void"))
          ];
        buildable = true;
        };
      };
    }