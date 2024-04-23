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
      specVersion = "3.0";
      identifier = { name = "symantic-base"; version = "0.5.0.20221211"; };
      license = "AGPL-3.0-or-later";
      copyright = "Julien Moutinho <julm+symantic-base@sourcephile.fr>";
      maintainer = "mailto:symantic-base@sourcephile.fr";
      author = "Julien Moutinho <julm+symantic-base@sourcephile.fr>";
      homepage = "https://git.sourcephile.fr/haskell/symantic-base";
      url = "";
      synopsis = "Basic symantic combinators for Embedded Domain-Specific Languages (EDSL)";
      description = "This is a work-in-progress collection of basic tagless-final combinators,\nalong with some advanced utilities to exploit them.\n* @Symantic.Syntaxes.Classes@\ngathers commonly used tagless-final combinators\n(the syntax part of symantics).\n* @Symantic.Syntaxes.Data@ interprets combinators as data constructors\nenabling to pattern-match on combinators while keeping their extensibility.\n* @Symantic.Syntaxes.Derive@\nto give a default value to combinators which avoids boilerplate code\nwhen implementing combinators for an interpreter is factorizable.\n* @Symantic.Syntaxes.EithersOfTuples@\nleverages @GHC.Generics@ to generate reciprocal functions\nbetween algebraic data type constructors and Eithers-of-Tuples.\n* @Symantic.Syntaxes.TuplesOfFunctions@\nenables the use of Tuples-of-Functions\ninstead of Eithers-of-Tuples.\n* @Symantic.Syntaxes.CurryN@\ngathers utilities for currying or uncurrying tuples\nof size greater or equal to two.\n* @Symantic.Semantics.SharingObserver@\ninterprets combinators to observe @let@ definitions\nat the host language level (Haskell),\neffectively turning infinite values into finite ones,\nwhich is useful for example to inspect\nand optimize recursive grammars.\nInspired by Andy Gill's [Type-safe observable sharing in Haskell](https://doi.org/10.1145/1596638.1596653).\nFor an example, see [symantic-parser](https://hackage.haskell.org/package/symantic-parser).\n* @Symantic.Semantics.ToFer@\ninterprets combinators to return Tuples-of-Functions\ninstead of Eithers-of-Tuples.\n* @Symantic.Semantics.Viewer@\ninterprets combinators as human-readable text.\n* @Symantic.Semantics.Viewer.Fixity@\ngathers utilities for parsing or viewing\ninfix, prefix and postfix combinators.\n* @Symantic.Syntaxes.Reader@\nis an intermediate interpreter enabling to change\nthe syntax combinators using an environment.\n* @Symantic.Utils.Reify@\nenables the lifting to any interpreter\nof any Haskell functions taking as arguments\nonly polymorphic types (possibly constrained)\nor functions using such types.\nInspired by Oleg Kiselyov's [TDPE.hs](http://okmij.org/ftp/tagless-final/course/TDPE.hs).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
    };
  }