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
      specVersion = "1.6";
      identifier = { name = "monadloc"; version = "0.7.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "http://github.com/pepeiborra/monadloc";
      url = "";
      synopsis = "A class for monads which can keep a monadic call trace";
      description = "This package defines a class for monads which can keep a monadic call trace.\n\n* See the blog post <http://pepeiborra.wordpress.com/2009/11/01/monadic-stack-traces-that-make-a-lot-of-sense> for more information.\n\nA preprocessor is available (see the package monadloc-pp) which inserts calls\nto \"Control.Monad.Loc.withLoc\" before every monadic statement in a module.\nTo invoke the preprocessor, add the pragma @OPTIONS_GHC -F -pgmF MonadLoc@  at the top of your Haskell files  together with an import for the \"Control.Monad.Loc\" module\n\nThis package provides no implementation of the \"Control.Monad.Loc.MonadLoc\" interface.\nCurrently the only package that does so is @control-monad-exception@,\nbut any other package can implement it and provide monadic call traces.\n/Changes/:\n\n* 0.7 - Extracted Template Haskell macro to separate module to allow @Control.Monad.Loc@ to be Safe. (thanks to Deian Stefan)\n\n* 0.6 - Extracted the preprocessor to a separate package @monadloc-pp@ to minimize the set of dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }