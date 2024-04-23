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
      specVersion = "1.12";
      identifier = { name = "freer-indexed"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Evgeny Poberezkin";
      maintainer = "evgeny@poberezkin.com";
      author = "Evgeny Poberezkin";
      homepage = "https://github.com/epoberezkin/freer-indexed#readme";
      url = "";
      synopsis = "Freer indexed monad for type-level resource-aware effectual operations.";
      description = "This package defines \"freer indexed monad\". It combines the ideas of freer monad and indexed (aka parameterized) monad:\n\n* <http://okmij.org/ftp/Haskell/extensible/more.pdf Freer Monads, More Extensible Effects>\n* <http://okmij.org/ftp/Computation/monads.html#param-monad Parameterized monads>\n* <http://okmij.org/ftp/Haskell/extensible/index.html#extext Parameterized Extensible Effects and Session Types>\n\nIt allows defining indexed monadic computations as GADTs without making\nthem into ad-hoc indexed monads, and instead use this data type\nto convert them into Functor, XApplicative and XMonad instances\n- see Control.XApplicative and Control.XMonad in this package.\n\nThis package does not (yet) allow composing these computations.\n\nSemantically, these computations could represent type-level state changes\nof some associated resources, with the first index parameter meaning\ninitial resource state prior to the computation, and the second index -\nthe final resource state, making each computation an edge in the graph\nof resource state transitions.\n\nFor XApplicative/XMonad classes all class and additional functions have similar names\nto standard Applicative/Monad functions, following two naming conventions:\n\n* function names are prefixed with \"x\" (for \"indeXed\") - e.g. `xpure`, `xreturn`, `xliftM2` etc.\n* operators are postfixed with \":\" - e.g. `<*>:`, `>>=:`, `>=>:` etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }