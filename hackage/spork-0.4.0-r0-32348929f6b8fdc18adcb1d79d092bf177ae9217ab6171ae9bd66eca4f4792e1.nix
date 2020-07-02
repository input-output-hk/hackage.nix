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
      specVersion = "1.10";
      identifier = { name = "spork"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2009 Matt Morrow & Dan Peebles, 2013 Liyang HU, 2020 Kiara Grouwstra";
      maintainer = "Kiara Grouwstra <tycho01@pm.me>";
      author = "Matt Morrow, Dan Peebles, Liyang HU, Kiara Grouwstra";
      homepage = "https://github.com/tycho01/spork";
      url = "";
      synopsis = "Catch errors from pure computations in a Maybe/Either";
      description = "Takes an error-throwing expression and puts it back in the Maybe/Either it belongs in.\n\nThis package is a fork of <https://hackage.haskell.org/package/spoon spoon>.\n\nNote that this currently suffers from the\n<https://ghc.haskell.org/trac/ghc/ticket/5902 asynchronous exceptions re-thrown synchronously>\nproblem. Buyer beware.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }