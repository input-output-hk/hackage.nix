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
      specVersion = "1.24";
      identifier = { name = "ghcjs-dom-jsffi"; version = "0.6.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "DOM library using JSFFI and GHCJS";
      description = "Documentent Object Model (DOM) functions that work with\nGHCJS.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
          (hsPkgs."ghcjs-prim" or (errorHandler.buildDepError "ghcjs-prim"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = if compiler.isGhcjs && true then true else false;
        };
      };
    }