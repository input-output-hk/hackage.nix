{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fclabels"; version = "2.0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastiaan Visser <code@fvisser.nl>";
      author = "Sebastiaan Visser, Erik Hesselink, Chris Eidhof, Sjoerd Visscher\nwith lots of help and feedback from others.";
      homepage = "https://github.com/sebastiaanvisser/fclabels";
      url = "";
      synopsis = "First class accessor labels implemented as lenses.";
      description = "This package provides first class labels that can act as\nbidirectional record fields. The labels can be derived\nautomatically using Template Haskell which means you don't have\nto write any boilerplate yourself. The labels are implemented as\n/lenses/ and are fully composable. Lenses can be used to /get/,\n/set/ and /modify/ parts of a data type in a consistent way.\n\nSee \"Data.Label\" for an introductory explanation or see the\nintroductory blog post at\n<http://fvisser.nl/post/2013/okt/1/fclabels-2.0.html>\n\n* /Total and partial lenses/\n\nInternally lenses do not used Haskell functions directly, but\nare implemented as categories. Categories allow the lenses to be\nrun in custom computational contexts. This approach allows us to\nmake partial lenses that point to fields of multi-constructor\ndatatypes in an elegant way.\n\nSee \"Data.Label.Partial\" for the use of partial labels.\n\n* /Monomorphic and polymorphic lenses/\n\nWe have both polymorphic and monomorphic lenses. Polymorphic\nlenses allow updates that change the type. The types of\npolymorphic lenses are slightly more verbose than their\nmonomorphic counterparts, but their usage is similar. Because\nmonomorphic lenses are built by restricting the types of\npolymorphic lenses they are essentially the same and can be\nfreely composed with eachother.\n\nSee \"Data.Label.Mono\" and \"Data.Label.Poly\" for the difference\nbetween polymorphic and monomorphic lenses.\n\n* /Using fclabels/\n\nTo simplify working with labels we supply both a set of labels\nfor Haskell's base types, like lists, tuples, Maybe and Either,\nand we supply a set of combinators for working with labels for\nvalues in the Reader and State monad.\n\nSee \"Data.Label.Base\" and \"Data.Label.Monadic\" for more\ninformation.\n\n* /Changelog from 2.0.3.1 to 2.0.3.2/\n\n>   - Allow HUnit 1.5.*.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fclabels)
            (hsPkgs.template-haskell)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.HUnit)
            ];
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [ (hsPkgs.base) (hsPkgs.fclabels) (hsPkgs.criterion) ];
          };
        };
      };
    }