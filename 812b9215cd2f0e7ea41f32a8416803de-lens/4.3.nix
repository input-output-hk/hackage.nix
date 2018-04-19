{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      benchmark-uniplate = false;
      inlining = true;
      old-inline-pragmas = false;
      dump-splices = false;
      test-hlint = true;
      test-doctests = true;
      test-hunit = true;
      test-properties = true;
      safe = false;
      trustworthy = true;
      lib-werror = false;
      j = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lens";
          version = "4.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012-2014 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/lens/";
        url = "";
        synopsis = "Lenses, Folds and Traversals";
        description = "This package comes \\\"Batteries Included\\\" with many useful lenses for the types\ncommonly used from the Haskell Platform, and with tools for automatically\ngenerating lenses and isomorphisms for user-supplied data types.\n\nThe combinators in @Control.Lens@ provide a highly generic toolbox for composing\nfamilies of getters, folds, isomorphisms, traversals, setters and lenses and their\nindexed variants.\n\nAn overview, with a large number of examples can be found in the <https://github.com/ekmett/lens#lens-lenses-folds-and-traversals README>.\n\nAn introductory video on the style of code used in this library by Simon Peyton Jones is available from <http://skillsmatter.com/podcast/scala/lenses-compositional-data-access-and-manipulation Skills Matter>.\n\nA video on how to use lenses and how they are constructed is available on <http://youtu.be/cefnmjtAolY?hd=1 youtube>.\n\nSlides for that second talk can be obtained from <http://comonad.com/haskell/Lenses-Folds-and-Traversals-NYC.pdf comonad.com>.\n\nMore information on the care and feeding of lenses, including a brief tutorial and motivation\nfor their types can be found on the <https://github.com/ekmett/lens/wiki lens wiki>.\n\nA small game of @pong@ and other more complex examples that manage their state using lenses can be found in the <https://github.com/ekmett/lens/blob/master/examples/ example folder>.\n\n/Lenses, Folds and Traversals/\n\nWith some signatures simplified, the core of the hierarchy of lens-like constructions looks like:\n\n\n<<http://i.imgur.com/4fHw3Fd.png>>\n\n<Hierarchy.png (Local Copy)>\n\nYou can compose any two elements of the hierarchy above using @(.)@ from the @Prelude@, and you can\nuse any element of the hierarchy as any type it linked to above it.\n\nThe result is their lowest upper bound in the hierarchy (or an error if that bound doesn't exist).\n\nFor instance:\n\n* You can use any 'Traversal' as a 'Fold' or as a 'Setter'.\n\n* The composition of a 'Traversal' and a 'Getter' yields a 'Fold'.\n\n/Minimizing Dependencies/\n\nIf you want to provide lenses and traversals for your own types in your own libraries, then you\ncan do so without incurring a dependency on this (or any other) lens package at all.\n\n/e.g./ for a data type:\n\n> data Foo a = Foo Int Int a\n\nYou can define lenses such as\n\n> -- bar :: Lens' (Foo a) Int\n> bar :: Functor f => (Int -> f Int) -> Foo a -> f (Foo a)\n> bar f (Foo a b c) = fmap (\\a' -> Foo a' b c) (f a)\n\n> -- quux :: Lens (Foo a) (Foo b) a b\n> quux :: Functor f => (a -> f b) -> Foo a -> f (Foo b)\n> quux f (Foo a b c) = fmap (Foo a b) (f c)\n\nwithout the need to use any type that isn't already defined in the @Prelude@.\n\nAnd you can define a traversal of multiple fields with 'Control.Applicative.Applicative':\n\n> -- traverseBarAndBaz :: Traversal' (Foo a) Int\n> traverseBarAndBaz :: Applicative f => (Int -> f Int) -> Foo a -> f (Foo a)\n> traverseBarAndBaz f (Foo a b c) = Foo <\$> f a <*> f b <*> pure c\n\nWhat is provided in this library is a number of stock lenses and traversals for\ncommon haskell types, a wide array of combinators for working them, and more\nexotic functionality, (/e.g./ getters, setters, indexed folds, isomorphisms).";
        buildType = "Custom";
      };
      components = {
        lens = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.comonad
            hsPkgs.contravariant
            hsPkgs.containers
            hsPkgs.distributive
            hsPkgs.filepath
            hsPkgs.free
            hsPkgs.ghc-prim
            hsPkgs.hashable
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.parallel
            hsPkgs.primitive
            hsPkgs.profunctors
            hsPkgs.reflection
            hsPkgs.scientific
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.split
            hsPkgs.tagged
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.void
            hsPkgs.zlib
          ];
        };
        tests = {
          templates = {
            depends  = [
              hsPkgs.base
              hsPkgs.lens
            ];
          };
          properties = {
            depends  = pkgs.lib.optionals (!(!_flags.test-properties)) [
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
              hsPkgs.transformers
            ];
          };
          hunit = {
            depends  = pkgs.lib.optionals (!(!_flags.test-hunit)) [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-th
            ];
          };
          doctests = {
            depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.deepseq
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.generic-deriving
              hsPkgs.mtl
              hsPkgs.nats
              hsPkgs.parallel
              hsPkgs.semigroups
              hsPkgs.simple-reflect
              hsPkgs.split
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
          hlint = {
            depends  = pkgs.lib.optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
        benchmarks = {
          plated = {
            depends  = [
              hsPkgs.base
              hsPkgs.comonad
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.generic-deriving
              hsPkgs.lens
              hsPkgs.transformers
            ] ++ pkgs.lib.optional _flags.benchmark-uniplate hsPkgs.uniplate;
          };
          alongside = {
            depends  = [
              hsPkgs.base
              hsPkgs.comonad
              hsPkgs.comonads-fd
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.lens
              hsPkgs.transformers
            ];
          };
          unsafe = {
            depends  = [
              hsPkgs.base
              hsPkgs.comonad
              hsPkgs.comonads-fd
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.generic-deriving
              hsPkgs.lens
              hsPkgs.transformers
            ];
          };
          zipper = {
            depends  = [
              hsPkgs.base
              hsPkgs.comonad
              hsPkgs.comonads-fd
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.generic-deriving
              hsPkgs.lens
              hsPkgs.transformers
            ];
          };
        };
      };
    }