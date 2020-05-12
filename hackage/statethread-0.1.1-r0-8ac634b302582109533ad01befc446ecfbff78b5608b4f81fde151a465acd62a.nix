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
      identifier = { name = "statethread"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "";
      homepage = "";
      url = "";
      synopsis = "The ST monad and STRefs";
      description = "The ST monad and STRefs in a portable form.\nThis package implements state threads as wrapper around IO and IORefs.\nYour compiler must support rank-2-types, IORefs,\nunsafePerformIO and unsafeInterleaveIO.\nThe package can be used as drop-in replacement for the 'st' package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."applicative" or (errorHandler.buildDepError "applicative"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }