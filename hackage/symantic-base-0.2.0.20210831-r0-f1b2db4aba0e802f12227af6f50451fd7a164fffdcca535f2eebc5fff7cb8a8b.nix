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
      identifier = { name = "symantic-base"; version = "0.2.0.20210831"; };
      license = "AGPL-3.0-or-later";
      copyright = "Julien Moutinho <julm+symantic-base@sourcephile.fr>";
      maintainer = "mailto:~julm/symantic-base@todo.hut.sourcephile.fr";
      author = "Julien Moutinho <julm+symantic-base@sourcephile.fr>";
      homepage = "https://git.hut.sourcephile.fr/~julm/symantic-base";
      url = "";
      synopsis = "Basic symantics combinators for Embedded Domain-Specific Languages (EDSL)";
      description = "This is a work-in-progress collection of basic tagless-final combinators,\nalong with some advanced utilities to exploit them.\n\n* @Symantic.Lang@\n  gathers commonly used tagless-final combinators\n  (the syntax part of symantics).\n* @Symantic.Data@ is an interpreter enabling to pattern-match on combinators,\n  while keeping their extensibility.\n* @Symantic.Derive@\n  enables to give a default value to combinators which avoids boilerplate code\n  when implementing combinators for an interpreter is factorizable.\n* @Symantic.ObserveSharing@\n  enables to observe Haskell @let@ definitions,\n  turning infinite values into finite ones,\n  which is useful to inspect and optimize recursive grammars for example.\n  Inspired by Andy Gill's [Type-safe observable sharing in Haskell](https://doi.org/10.1145/1596638.1596653).\n  For an example, see [symantic-parser](https://hackage.haskell.org/package/symantic-parser).\n* @Symantic.Reify@\n  enables the lifting to any interpreter\n  of any Haskell functions taking as arguments\n  only polymorphic types (possibly constrained)\n  or functions using such types.\n  Inspired by Oleg Kiselyov's [TDPE.hs](http://okmij.org/ftp/tagless-final/course/TDPE.hs).\n* @Symantic.View@\n  is an interpreter enabling to turn combinators into a human-readable string.\n* @Symantic.ADT@\n  enables to derive reciprocal functions between\n  data-constructors and @Either@s of tuples.\n* @Symantic.CurryN@\n  gathers utilities for currying or uncurrying tuples\n  of size greater or equal to 2.\n* @Symantic.Fixity@\n  gathers utilities for parsing or viewing\n  infix, prefix and postfix combinators.";
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