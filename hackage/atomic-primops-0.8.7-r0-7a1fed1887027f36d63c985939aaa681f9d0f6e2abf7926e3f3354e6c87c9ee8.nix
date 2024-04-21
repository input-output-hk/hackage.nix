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
    flags = { debug = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "atomic-primops"; version = "0.8.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
      url = "";
      synopsis = "A safe approach to CAS and other atomic ops in Haskell.";
      description = " After GHC 7.4 a new `casMutVar#` primop became available, but it's\n difficult to use safely, because pointer equality is a highly\n unstable property in Haskell.  This library provides a safer method\n based on the concept of \"Tickets\".\n.\n Also, this library uses the \"foreign primop\" capability of GHC to\n add access to other variants that may be of\n interest, specifically, compare and swap inside an array.\n.\n Note that as of GHC 7.8, the relevant primops have been included in GHC itself.\n This library is engineered to work pre- and post-GHC-7.8, while exposing the\n same interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      };
    }