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
      identifier = { name = "interleave"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown";
      homepage = "";
      url = "";
      synopsis = "Combinators for supporting interleaving of different behaviours";
      description = "This package adds some combinators that can be used with any type constructor that has an instance for both Alternative and Monad.  The rationale, design and implementation are all explained in an article in The Monad Reader issue 17, which will appear on <http://themonadreader.wordpress.com/> imminently.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }