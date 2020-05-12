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
      identifier = { name = "threadmanager"; version = "0.1.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "_Real World Haskell_, http://www.realworldhaskell.org/";
      homepage = "";
      url = "";
      synopsis = "(deprecated in favor of 'threads') Simple thread management";
      description = "This package is useful, but deprecated. In new code, please use /threads/\ninstead. See <http://hackage.haskell.org/package/threads>.\n\nA simple thread management API inspired by the one in chapter 24 of\n/Real World Haskell/. See <http://book.realworldhaskell.org/read/concurrent-and-multicore-programming.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }