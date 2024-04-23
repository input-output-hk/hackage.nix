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
      identifier = { name = "reactivity"; version = "0.3.2.3"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2016 by James Candy";
      maintainer = "info@alkalisoftware.net";
      author = "James Candy";
      homepage = "http://www.alkalisoftware.net/Reactivity.html";
      url = "http://code.haskell.org/reactivity";
      synopsis = "An alternate implementation of push-pull FRP.";
      description = "An alternate implementation of push-pull FRP. This is based on the Reactive package (http://haskell.org/haskellwiki/reactive) (and the sources have been made available in accordance with the GPL [license] of that package).\n\nThe two types of reactive signals in this package reflect different tradeoffs. Choose Event when you need maximal speed, or to embed I/O effects in your programs. Choose MeasurementWrapper for precision.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."list-extras" or (errorHandler.buildDepError "list-extras"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
        ];
        buildable = if compiler.isGhc && compiler.version.lt "6.9"
          then false
          else true;
      };
    };
  }