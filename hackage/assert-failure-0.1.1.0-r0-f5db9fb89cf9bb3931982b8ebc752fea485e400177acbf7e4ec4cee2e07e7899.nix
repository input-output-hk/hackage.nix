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
      identifier = { name = "assert-failure"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Mikolaj Konarski";
      homepage = "https://github.com/Mikolaj/assert-failure";
      url = "";
      synopsis = "Syntactic sugar improving 'assert' and 'error'";
      description = "This library contains syntactic sugar that improves\nthe usability of 'assert' and 'error'.\nThis is actually a bunch of hacks wrapping the original\n'assert' function, see inside.\n\nSee also <http://hackage.haskell.org/package/loch>,\n<http://hackage.haskell.org/package/assert>\nand <https://ghc.haskell.org/trac/ghc/ticket/5273>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
        ];
        buildable = true;
      };
    };
  }