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
      specVersion = "1.2";
      identifier = { name = "stm-io-hooks"; version = "0.7.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson 2009-2011, Chris Kuklewicz 2006";
      homepage = "http://darcs.monoid.at/stm-io-hooks";
      url = "";
      synopsis = "STM with IO hooks";
      description = "This library provides a Software Transactional Memory (STM) monad with commit and retry IO hooks.\nA retry-action is run (at least once) if the transaction retries, while commit-actions are\nexecuted iff the transaction commits. The AdvSTM monad also gives some atomicity\nguarantees for commit-actions:\n\n* When a TVar is modified in a transaction and this transaction commits,\nthe update remains invisible to other threads until the corresponding\nonCommit action is run.\n\n* If the onCommit action throws an exception, the original values of\nthe modified TVars are restored.\n\nNote: The package can be used as a drop-in replacement for\n'Control.Concurrent.STM'. This library was inspired by the AdvSTM monad on\nthe Haskell Wiki (see <http://haskell.org/haskellwiki/?title=New_monads/MonadAdvSTM>).\n\nFeedback is welcome!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }