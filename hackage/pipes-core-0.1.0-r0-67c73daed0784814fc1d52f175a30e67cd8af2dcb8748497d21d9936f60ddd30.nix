{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10.1";
      identifier = {
        name = "pipes-core";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Gabriel Gonzalez, 2012 Paolo Capriotti";
      maintainer = "p.capriotti@gmail.com";
      author = "Gabriel Gonzalez, Paolo Capriotti";
      homepage = "https://github.com/pcapriotti/pipes-core";
      url = "";
      synopsis = "Compositional pipelines";
      description = "This library offers an abstraction similar in scope to\niteratees\\/enumerators\\/enumeratees, but with different characteristics and\nnaming conventions.\n\nThis package is a fork of the original pipes package by Gabriel Gonzalez.\nSee <https://github.com/pcapriotti/pipes-core/wiki/pipes-core-vs-pipes> for a\ncomparison between the two packages.\n\nDifferences with traditional iteratees:\n\n* /Simpler semantics/: There is only one data type ('Pipe'), two basic\nprimitives ('await' and 'yield'), and only one way to compose 'Pipe's\n('>+>').  In fact, ('>+>') is just convenient syntax for the composition\noperator in 'Category'. Most pipes can be implemented just using the\n'Monad' instance and composition.\n\n* /Different naming conventions/: Enumeratees are called 'Pipe's, Enumerators\nare 'Producer's, and Iteratees are 'Consumer's.  'Producer's and 'Consumer's\nare just type synonyms for 'Pipe's with either the input or output end\nclosed.\n\n* /Pipes form a Category/: that means that composition is associative, and\nthat there is an identity 'Pipe'.\n\n* /\"Vertical\" concatenation works on every 'Pipe'/: ('>>'), concatenates\n'Pipe's. Since everything is a 'Pipe', you can use it to concatenate\n'Producer's, 'Consumer's, and even intermediate 'Pipe' stages.  Vertical\nconcatenation can be combined with composition to create elaborate\ncombinators, without the need of executing pipes in \\\"passes\\\" or resuming\npartially executed pipes.\n\nCheck out \"Control.Pipe\" for a copious introduction (in the spirit of the\n@iterIO@ library), and \"Control.Pipe.Combinators\" for some basic combinators\nand 'Pipe' examples.";
      buildType = "Simple";
    };
    components = {
      "pipes-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.categories)
          (hsPkgs.void)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
        ];
      };
    };
  }