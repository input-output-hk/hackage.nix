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
      identifier = { name = "symantic-base"; version = "0.1.0.20210703"; };
      license = "AGPL-3.0-or-later";
      copyright = "Julien Moutinho <julm+symantic-base@sourcephile.fr>";
      maintainer = "Julien Moutinho <julm+symantic-base@sourcephile.fr>";
      author = "Julien Moutinho <julm+symantic-base@sourcephile.fr>";
      homepage = "";
      url = "";
      synopsis = "Commonly useful symantics for Embedded Domain-Specific Languages (EDSL)";
      description = "This is a work-in-progress collection of basic tagless-final combinators,\nalong with some advanced utilities to exploit them.\n\n* @Symantic.Typed@\n  is for combinators indexed by a single type.\n* @Symantic.Dityped@\n  is for combinators indexed by an extensible function type,\n  used for typed formatting, enabling type safe dual interpreters à la printf and scanf.\n  Inspired by Oleg Kiselyov's [PrintScanF.hs](http://okmij.org/ftp/tagless-final/course/PrintScanF.hs).\n  For an example, see [symantic-http](https://hackage.haskell.org/package/symantic-http).\n* @Symantic.{Typed,Dityped}.Lang@\n  gather commonly used tagless-final combinators\n  (the syntax part of symantics).\n* @Symantic.Typed.Data@ is an interpreter enabling to pattern-match on combinators,\n  while keeping their extensibility.\n* @Symantic.{Typed,Dityped}.Derive@\n  enable to give a default value to combinators which avoids boilerplate code\n  when implementing combinators for an interpreter is factorizable.\n* @Symantic.Typed.ObserveSharing@\n  enables to observe Haskell @let@ definitions,\n  turning infinite values into finite ones,\n  which is useful to inspect and optimize recursive grammars for example.\n  Inspired by Andy Gill's [Type-safe observable sharing in Haskell](https://doi.org/10.1145/1596638.1596653).\n  For an example, see [symantic-parser](https://hackage.haskell.org/package/symantic-parser).\n* @Symantic.Typed.Reify@\n  enables the lifting to any interpreter\n  of any Haskell functions taking as arguments\n  only polymorphic types (possibly constrained)\n  or functions using such types.\n  Inspired by Oleg Kiselyov's [TDPE.hs](http://okmij.org/ftp/tagless-final/course/TDPE.hs).\n* @Symantic.Typed.View@\n  is an interpreter enabling to turn combinators into a human-readable string.\n* @Symantic.Dityped.ADT@\n  enables to define formats à la printf-scanf\n  using data-constructors instead of @Either@s of tuples.\n  For an example, see [symantic-atom](https://hackage.haskell.org/package/symantic-atom).\n* @Symantic.Dityped.CurryN@\n  gather utilities for currying or uncurrying tuples\n  of size greater or equal to 2.\n* @Symantic.Typed.Fixity@\n  gathers utilities for parsing or viewing\n  infix, prefix and postfix combinators.";
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