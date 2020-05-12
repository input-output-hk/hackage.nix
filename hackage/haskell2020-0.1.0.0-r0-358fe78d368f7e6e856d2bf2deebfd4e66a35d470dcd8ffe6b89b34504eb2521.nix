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
      specVersion = "2.2";
      identifier = { name = "haskell2020"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Haskell 2020[draft] Standard Library";
      description = "This package provides an implementation of library modules to be defined by the future Haskell2020 Library Report.\n\n__NOTE__: The Haskell2020 Library Report has not yet been released and therefore this implementation is merely a technical preview and subject to change.\n\n== Changes relative to Haskell2010\n\n* [Remove Show/Eq superclasses of Num](https://mail.haskell.org/pipermail/libraries/2011-September/016699.html)\n* [Remove Num superclass of Bits](https://mail.haskell.org/pipermail/libraries/2011-October/016899.html)\n* [Add Bits instance for Bool](https://ghc.haskell.org/trac/ghc/ticket/7424)\n* Add 'Monad' instance for @(->)@ and 'Either'; add 'Functor' instance for @(,)@\n* [Export Word from Prelude](https://mail.haskell.org/pipermail/libraries/2014-August/023491.html)\n* [Functor-Applicative-Monad proposal (AMP)](https://wiki.haskell.org/Functor-Applicative-Monad_Proposal)\n* [Monad of no return/>> proposal (MRP)](https://ghc.haskell.org/trac/ghc/wiki/Proposal/MonadOfNoReturn)\n* [MonadFail proposal (MFP)](https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }