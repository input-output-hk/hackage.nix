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
      identifier = { name = "monad-ran"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Edward Kmett 2009";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Edward Kmett";
      homepage = "";
      url = "";
      synopsis = "Fast monads and monad transformers";
      description = "Fast implementations of monads and monad transformers using right Kan extensions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }