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
      identifier = { name = "monad-peel"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Anders Kaseorg";
      maintainer = "Anders Kaseorg <andersk@mit.edu>";
      author = "Anders Kaseorg";
      homepage = "http://andersk.mit.edu/haskell/monad-peel/";
      url = "";
      synopsis = "Lift control operations like exception catching through monad transformers";
      description = "This package defines @MonadPeelIO@, a subset of @MonadIO@ into which\ngeneric control operations such as @catch@ can be lifted from @IO@.\nInstances are based on monad transformers in @MonadTransPeel@, which\nincludes all standard monad transformers in the @transformers@\nlibrary except @ContT@.  For convenience, it provides a wrapped\nversion of Control.Exception with types generalized from @IO@ to all\nmonads in @MonadPeelIO@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }