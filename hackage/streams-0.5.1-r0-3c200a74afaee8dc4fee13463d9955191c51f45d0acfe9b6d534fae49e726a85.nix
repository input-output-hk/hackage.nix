{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "streams";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 Edward Kmett\nCopyright 2010 Tony Morris, Oliver Taylor, Eelis van der Weegen\nCopyright 2007-2010 Wouter Swierstra, Bas van Dijk";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/streams";
      url = "";
      synopsis = "Various Haskell 2010 stream comonads";
      description = "Various Haskell 2010 stream comonads.\n\n* \"Data.Stream.Branching\" provides an \\\"f-Branching Stream\\\" comonad, aka the cofree comonad, or generalized rose tree.\n\n> data Stream f a = a :< f (Stream a)\n\n* \"Data.Stream.Future\" provides a coinductive anti-causal stream, or non-empty 'ZipList'. The comonad provides access to only the\ntail of the stream. Like a conventional 'ZipList', this is /not/ a monad.\n\n> data Future a = Last a | a :< Future a\n\n* \"Data.Stream.Future.Skew\" provides a non-empty skew-binary random-access-list with the semantics of @Data.Stream.Future@. As with\n\"Data.Stream.Future\" this stream is not a 'Monad', since the 'Applicative' instance zips streams of potentially differing lengths.\nThe random-access-list structure provides a number of operations logarithmic access time, but makes 'Data.Stream.Future.Skew.cons'\nless productive. Where applicable \"Data.Stream.Infinite.Skew\" may be more efficient, due to a lazier and more efficient 'Applicative'\ninstance.\n\n>\n\n* \"Data.Stream.NonEmpty\" provides a non-empty list comonad where the Applicative and Monad work like those of the @[a]@.\nBeing non-empty, it trades in the 'Alternative' and 'Monoid' instances of @[a]@ for weaker append-based 'FunctorAlt' and 'Semigroup'\ninstances while becoming a member of 'Comonad' and 'ComonadApply'. Acting like a list, the semantics of '<*>' and\n'<.>' take a cross-product of membership from both 'NonEmpty' lists rather than zipping like a 'Future'\n\n> data NonEmpty a = a :| [a]\n\n* \"Data.Stream.Infinite\" provides a coinductive infinite anti-causal stream. The 'Comonad' provides access to the tail of the\nstream and the 'Applicative' zips streams together. Unlike 'Future', infinite stream form a 'Monad'. The monad diagonalizes\nthe 'Stream', which is consistent with the behavior of the 'Applicative', and the view of a 'Stream' as a isomorphic to the reader\nmonad from the natural numbers. Being infinite in length, there is no 'Alternative' instance, but instead the 'FunctorAlt'\ninstance provides access to the 'Semigroup' of interleaving streams.\n\n> data Stream a = a :< Stream a\n\n* \"Data.Stream.Infinite.Skew\" provides an infinite skew-binary random-access-list with the semantics of \"Data.Stream.Infinite\"\nSince every stream is infinite, the 'Applicative' instance can be considerably less strict than the corresponding instance for\n\"Data.Stream.Future.Skew\" and performs asymptotically better.\n\n>\n\n* \"Data.Stream.Infinite.Functional.Zipper\" provides a bi-infinite sequence, represented as a pure function with an accumulating\nparameter added to optimize moving the current focus.\n\n> data Zipper a = !Integer :~ (Integer -> a)\n\n* \"Data.Stream.Supply\" provides a comonadic supply of unique values, which are\ngenerated impurely as the tree is explored.\n\n/Changes since 0.5/:\n* Data.Stream.Supply added\n/Changes since 0.1/:\n\n* A number of strictness issues with 'NonEmpty' were fixed\n\n* More documentation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.functor-apply)
          (hsPkgs.distributive)
          (hsPkgs.semigroups)
        ];
      };
    };
  }