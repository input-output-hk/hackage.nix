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
        name = "bound";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/bound/";
      url = "";
      synopsis = "Combinators for manipulating locally-nameless generalized de Bruijn terms";
      description = "The goal of this package is to make it as easy as possible to deal with name binding without forcing an\nawkward monadic style on the user. To that end we provide haskell 98 combinators for manipulating\nlocally-nameless generalized de Bruijn terms, build over user-supplied term types. A generalized\nde Bruijn term is one where you can 'succ' whole trees instead of just individual variables.\n\nThe approach was first elaborated in Bird and Patterson, \\\"de Bruijn notation as a nested data type\\\":\n\n<http://www.cs.uwyo.edu/~jlc/courses/5000_fall_08/debruijn_as_nested_datatype.pdf>\n\nHowever, the combinators they used required higher rank types. Here we use a monad transformer to encapsulate\nthe novel recursion pattern in their generalized de Bruijn representation. It is named Scope to match up\nwith the terminology from Conor McBride and James McKinna's \\\"I am not a number: I am a free variable\\\",\nwhile providing stronger type safety guarantees.\n\n<http://www.cs.st-andrews.ac.uk/~james/RESEARCH/notanum.pdf>\n\nThere are three worked examples in the examples folder:\n\n* /Simple.hs/ provides an untyped lambda calculus with recursive let bindings.\n\n* /Derived.hs/ shows how much of the API can be automated with DeriveTraversable\nand adds combinators for building binders with pattern matching.\n\n* /Overkill.hs/ provides very strongly typed pattern matching many modern type extensions, including\npolymorphic kinds to ensure type safety. In general, the approach taken by Derived seems to deliver\na better power to weight ratio.";
      buildType = "Simple";
    };
    components = {
      "bound" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.prelude-extras)
          (hsPkgs.transformers)
        ];
      };
    };
  }