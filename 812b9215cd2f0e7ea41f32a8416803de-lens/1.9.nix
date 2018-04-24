{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lens";
          version = "1.9";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/lens/";
        url = "";
        synopsis = "Lenses, Folds and Traversals";
        description = "This package comes \\\"Batteries Included\\\" with many useful lenses for the types\ncommonly used from the Haskell Platform, and with tools for automatically\ngenerating lenses and isomorphisms for user-supplied data types.\n\nThe combinators in @Control.Lens@ provide a highly generic toolbox for composing\nfamilies of getters, folds, isomorphisms, traversals, setters and lenses and their\nindexed variants.\n\nMore information on the care and feeding of lenses, including a tutorial and motivation\nfor their types can be found on the lens wiki.\n\n<https://github.com/ekmett/lens/wiki>\n\nA small game that manages its state using lenses can be found in the example folder.\n\n<https://github.com/ekmett/lens/blob/master/examples/Pong.hs>\n\n/Lenses, Folds and Traversals/\n\nThe core of this hierarchy looks like:\n\n<<https://github.com/ekmett/lens/wiki/images/Hierarchy-1.9.png>>\n\nYou can compose any two elements of the hierarchy above using (.) from the Prelude, and you can\nuse any element of the hierarchy as any type it links to above it.\n\nThe result is their lowest upper bound in the hierarchy (or an error f that bound doesn't exist).\n\nFor instance:\n\n* You can use any 'Traversal' as a 'Fold' or as a 'Setter'.\n\n* The composition of a 'Traversal' and a 'Getter' yields a 'Fold'.\n\n/Minimizing Dependencies/\n\nIf you want to provide lenses and traversals for your own types in your own libraries, then you\ncan do so without incurring a dependency on this (or any other) lens package at all.\n\ne.g. for a data type:\n\n> data Foo a = Foo Int Int a\n\nYou can define lenses such as\n\n> -- bar :: Simple Lens (Foo a) Int\n> bar :: Functor f => (Int -> f Int) -> Foo a -> f Foo a\n> bar f (Foo a b c) = fmap (\\a' -> Foo a' b c) (f a)\n\n> -- baz :: Lens (Foo a) (Foo b) a b\n> quux :: Functor f => (a -> f b) -> Foo a -> f (Foo b)\n> quux f (Foo a b c) = fmap (Foo a b) (f c)\n\nwithout the need to use any type that isn't already defined in the @Prelude@.\n\nAnd you can define a traversal of multiple fields with 'Control.Applicative.Applicative':\n\n> -- traverseBarAndBaz :: Simple Traversal (Foo a) Int\n> traverseBarAndBaz :: Applicative f => (Int -> f Int) -> Foo a -> f (Foo a)\n> traverseBarAndBaz f (Foo a b c) = Foo <\$> f a <*> f b <*> pure c\n\nWhat is provided in this library is a number of stock lenses and traversals for\ncommon haskell types, a wide array of combinators for working them, and more\nexotic functionality, (e.g. getters, setters, indexed folds, isomorphisms).";
        buildType = "Simple";
      };
      components = {
        lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.parallel
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4") hsPkgs.ghc-prim;
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
          templates = {
            depends  = [
              hsPkgs.base
              hsPkgs.lens
            ];
          };
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.QuickCheck
              hsPkgs.transformers
            ];
          };
        };
      };
    }