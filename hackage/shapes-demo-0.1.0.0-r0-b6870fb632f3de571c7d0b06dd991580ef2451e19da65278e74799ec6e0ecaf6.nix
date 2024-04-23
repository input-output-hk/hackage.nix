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
      identifier = { name = "shapes-demo"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Kynan Rilee";
      maintainer = "kynan.rilee@gmail.com";
      author = "Kynan Rilee";
      homepage = "https://github.com/ublubu/shapes#readme";
      url = "";
      synopsis = "demos for the 'shapes' package";
      description = "Please see the README on Github at <https://github.com/ublubu/shapes#readme>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "shapes-demo" = {
          depends = [
            (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."monad-extras" or (errorHandler.buildDepError "monad-extras"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."shapes" or (errorHandler.buildDepError "shapes"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }