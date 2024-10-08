{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fclabels"; version = "2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastiaan Visser <code@fvisser.nl>";
      author = "Sebastiaan Visser, Erik Hesselink, Chris Eidhof, Sjoerd Visscher\nwith lots of help and feedback from others.";
      homepage = "https://github.com/sebastiaanvisser/fclabels";
      url = "";
      synopsis = "First class accessor labels implemented as lenses.";
      description = "This package provides first class labels that can act as\nbidirectional record fields. The labels can be derived\nautomatically using Template Haskell which means you don't have\nto write any boilerplate yourself. The labels are implemented as\n/lenses/ and are fully composable. Lenses can be used to /get/,\n/set/ and /modify/ parts of a data type in a consistent way.\n\nSee \"Data.Label\" for an introductory explanation or see the\nintroductory blog post at\n<http://fvisser.nl/post/2013/okt/1/fclabels-2.0.html>\n\n* /Total and partial lenses/\n\nInternally lenses do not used Haskell functions directly, but\nare implemented as categories. Categories allow the lenses to be\nrun in custom computational contexts. This approach allows us to\nmake partial lenses that point to fields of multi-constructor\ndatatypes in an elegant way.\n\nSee \"Data.Label.Partial\" for the use of partial labels.\n\n* /Monomorphic and polymorphic lenses/\n\nWe have both polymorphic and monomorphic lenses. Polymorphic\nlenses allow updates that change the type. The types of\npolymorphic lenses are slightly more verbose than their\nmonomorphic counterparts, but their usage is similar. Because\nmonomorphic lenses are built by restricting the types of\npolymorphic lenses they are essentially the same and can be\nfreely composed with eachother.\n\nSee \"Data.Label.Mono\" and \"Data.Label.Poly\" for the difference\nbetween polymorphic and monomorphic lenses.\n\n* /Using fclabels/\n\nTo simplify working with labels we supply both a set of labels\nfor Haskell's base types, like lists, tuples, Maybe and Either,\nand we supply a set of combinators for working with labels for\nvalues in the Reader and State monad.\n\nSee \"Data.Label.Base\" and \"Data.Label.Monadic\" for more\ninformation.\n\n* /Changelog from 2.0.3.2 to 2.0.4/\n\n>   - Import Functor, Applicative, and Monad instances for\n>     Kleisli from the base-orphans package for future GHC 8.10\n>     support.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }