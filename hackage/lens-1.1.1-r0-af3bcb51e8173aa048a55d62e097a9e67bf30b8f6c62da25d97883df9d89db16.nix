{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "lens";
        version = "1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/lens/";
      url = "";
      synopsis = "Families of Lenses, Folds and Traversals";
      description = "The combinators in @Control.Lens@ provide a highly generic toolbox for composing\nfamilies of getters, folds, traversals, setters and lenses.\n\n/Getter/\n\nA @'Getter' a b c d@ is just any function @(a -> c)@, which we've flipped into continuation\npassing style, @forall r. (c -> r) -> a -> r@ and decorated with 'Const' to obtain\n\n> type Getter a b c d = forall r. (c -> Const r d) -> a -> Const r b\n\nEverything you can do with a function, you can do with a 'Getter', but note that because of the\ncontinuation passing style (.) composes them in the opposite order.\n\nSince it is only a function, every 'Getter' obviously only retrieves a single value for a given\ninput.\n\n/Fold/\n\nA @'Fold' a b c d@ is a generalization of something 'Foldable'. It allows you to\nextract multiple results from a container. A 'Foldable' container can be\ncharacterized by the behavior of @foldMap :: (Foldable t, Monoid m) => (c -> m) -> t c -> m@.\nSince we want to be able to work with monomorphic containers, we generalize this signature to\n@forall m. 'Monoid' m => (c -> m) -> a -> m@, and then decorate it with 'Const' to obtain\n\n> type Fold a b c d = forall m. Monoid m => (c -> Const m d) -> a -> Const m b\n\nEvery 'Getter' is a valid 'Fold' that simply doesn't use the 'Monoid' it is passed.\n\nEverything you can do with a 'Foldable' container, you can with with a 'Fold' and there are\ncombinators that generalize the usual 'Foldable' operations in @Control.Lens@.\n\n/Traversal/\n\nA @'Traversal' a b c d@ is a generalization of 'traverse' from 'Traversable'. It allows\nyou to traverse over a structure and change out its contents with monadic or\napplicative side-effects. Starting from\n@'traverse' :: ('Traversable' t, 'Applicative' f) => (c -> f d) -> t c -> f (t d)@,\nwe monomorphize the contents and result to obtain\n\n> type Traversal a b c d = forall f. Applicative f => (c -> f d) -> a -> f b\n\nEvery 'Traversal' can be used as a valid 'Fold', because given a 'Monoid' @m@, we have an 'Applicative' for @('Const' m)@.\nEverything you can do with a 'Traversable' container, you can with with a 'Traversal', and there\nare combinators that generalize the usual 'Traversable' operations in @Control.Lens@.\n\n/Setter/\n\nA @'Setter' a b c d@ is a generalization of 'fmap' from 'Functor'. It allows you to map into a\nstructure and change out the contents, but it isn't strong enough to allow you to\nenumerate those contents. Starting with @fmap :: 'Functor' f => (c -> d) -> f c -> f d@\nwe monomorphize the type to obtain @(c -> d) -> a -> b@ and then decorate it with 'Identity' to obtain\n\n> type Setter a b c d = (c -> Identity d) -> a -> Identity b\n\nEvery 'Traversal' is a valid 'Setter', since 'Identity' is 'Applicative'.\n\nEverything you can do with a 'Functor', you can do with a 'Setter', and there are combinators that\ngeneralize the usual 'Functor' operations in @Control.Lens@.\n\n/Lens/\n\nA @'Lens' a b c d@ is a purely functional reference.\n\nWhile a 'Traversal' was a valid 'Fold', it wasn't a valid 'Getter'. To make the 'Applicative'\nfor 'Const' it required a 'Monoid' for the argument we passed it, which a 'Getter' doesn't recieve.\n\nHowever, the instance of 'Functor' for 'Const' requires no such thing. If we weaken the type\nrequirement from 'Applicative' to 'Functor' for 'Traversal', we obtain\n\n> type Lens a b c d = forall f. Functor f => (c -> f d) -> a -> f b\n\nEvery 'Lens' is a valid 'Setter', choosing @f@ = 'Identity'.\n\nEvery 'Lens' is a valid 'Fold' that doesn't use the 'Monoid' it is passed.\n\nEvery 'Lens' is a valid 'Traversal' that only uses the 'Functor' part of the 'Applicative' it is supplied.\n\nEvery 'Lens' is a valid 'Getter', choosing @f@ = 'Const' @r@ for an appropriate @r@\n\nSince every 'Lens' is a valid 'Getter' it follows that it must view exactly one element in the structure.\n\nThe lens laws follow from this property and the desire for it to act like a 'Functor' when used as a 'Setter'.\n\n/Composition/\n\nNote that all of these types are type aliases, and you can compose these lenses with mere function compositon.\n\nThis is a generalization of the well-known trick for @(.).(.)@ or @fmap.fmap@, and their less well-known cousins\n@foldMap.foldMap@ @traverse.traverse@. It follows because each one is a function between values of type @(x -> f y)@\nand the composition takes the intersection of supplied functionality for you automatically!\n\n/Lens Families/\n\nFor a longer description of why you should care about lenses, and an overview of why we use 4\nparameters a, b, c, and d instead of just 2, see <http://comonad.com/reader/2012/mirrored-lenses/>.\n\nSometimes you won't need the flexibility those extra parameters afford you and you can use\n\n> type Simple f a b = f a a b b\n\nto describe a 'Simple' 'Lens', 'Simple' 'Traversal' or 'Simple' 'Setter'.\n\n/Avoiding Dependencies/\n\nNote: If you merely want your library to /provide/ lenses you may not\nhave to actually import /any/ lens library at all. For, say, a\n@'Simple' 'Lens' Bar Foo@, just export a function with the signature:\n\n> foo :: Functor f => (Foo -> f Foo) -> Bar -> f Bar\n\nand then you can compose it with other lenses using nothing more than @(.)@ from the Prelude.\n\n/Deriving Lenses/\n\nYou can derive lenses automatically for many data types using 'Control.Lens.TH', and if a\ncontainer is fully characterized by its lenses, you can use 'Control.Lens.Representable' to\nautomatically derive 'Functor', 'Applicative', 'Monad', and 'Derivable'.";
      buildType = "Simple";
    };
    components = {
      "lens" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }