{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes";
          version = "2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Compositional pipelines";
        description = "\\\"Iteratees done right\\\".  This library implements\niteratees\\/enumerators\\/enumeratees simply and elegantly, using different\nnaming conventions.\n\nAdvantages over traditional iteratee implementations:\n\n* /Simpler semantics/: There is only one data type ('Pipe'), two primitives\n('await' and 'yield'), and only one way to compose 'Pipe's ('.').  In fact,\nthis library implements its entire behavior using its 'Monad' and 'Category'\ninstances and enforces their laws strictly!\n\n* /Clearer naming conventions/: Enumeratees are called 'Pipe's, Enumerators\nare 'Producer's, and Iteratees are 'Consumer's.  'Producer's and 'Consumer's\nare just type synonyms for 'Pipe's with either the input or output end\nclosed.\n\n* /Pipes are Categories/: You compose them using ordinary composition.\n\n* /Intuitive/: Pipe composition is easier to reason about because it is a true\n'Category'.  Composition works seamlessly and you don't have to worry about\nrestarting iteratees, feeding new input, etc.  \\\"It just works\\\".\n\n* /\"Vertical\" concatenation works flawlessly on everything/: ('>>')\nconcatenates 'Pipe's, but since everything is a 'Pipe', you can use it to\nconcatenate 'Producer's, 'Consumer's, and even intermediate 'Pipe' stages.\nVertical Concatenation always works the way you expect, picking up where the\nprevious 'Pipe' left off.\n\nCheck out \"Control.Pipe.Tutorial\" for a copious introductory tutorial and\n\"Control.Pipe\" for the actual implementation.";
        buildType = "Simple";
      };
      components = {
        pipes = {
          depends  = [
            hsPkgs.base
            hsPkgs.index-core
            hsPkgs.transformers
            hsPkgs.transformers-free
            hsPkgs.void
          ];
        };
      };
    }