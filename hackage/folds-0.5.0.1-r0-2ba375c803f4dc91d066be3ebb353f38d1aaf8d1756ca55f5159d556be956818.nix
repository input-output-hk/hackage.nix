{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test-doctests = true;
      test-hlint = true;
      optimize = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "folds";
        version = "0.5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2009-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/folds";
      url = "";
      synopsis = "Beautiful Folding";
      description = "This package is a playground full of comonadic folds.\n\nThis style of fold is documented in <https://www.fpcomplete.com/user/edwardk/cellular-automata/part-2 \"Cellular Automata, Part II: PNGs and Moore\">\n\nThis package can be seen as what happens if you chase Max Rabkin's <http://squing.blogspot.com/2008/11/beautiful-folding.html \"Beautiful Folding\"> to its logical conclusion.\n\nMore information on this approach can be found in the <http://conal.net/blog/posts/another-lovely-example-of-type-class-morphisms \"Another lovely example of type class morphisms\"> and <http://conal.net/blog/posts/more-beautiful-fold-zipping \"More beautiful fold zipping\"> posts by Conal Elliott, as well as in Gabriel Gonzales' <http://www.haskellforall.com/2013/08/composable-streaming-folds.html \"Composable Streaming Folds\">";
      buildType = "Custom";
    };
    components = {
      "folds" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.contravariant)
          (hsPkgs.lens)
          (hsPkgs.pointed)
          (hsPkgs.profunctors)
          (hsPkgs.reflection)
          (hsPkgs.semigroupoids)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "hlint" = {
          depends  = pkgs.lib.optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.deepseq)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.semigroups)
          ];
        };
      };
    };
  }