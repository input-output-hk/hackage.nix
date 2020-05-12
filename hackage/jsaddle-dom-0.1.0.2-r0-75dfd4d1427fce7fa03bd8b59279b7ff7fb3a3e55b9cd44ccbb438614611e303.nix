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
      specVersion = "1.22";
      identifier = { name = "jsaddle-dom"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "DOM library that uses jsaddle to support both GHCJS and WebKitGTK";
      description = "Documentent Object Model (DOM) functions implemented using jsaddle.\nIt works with both GHCJS and GHC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."ghcjs-prim" or (errorHandler.buildDepError "ghcjs-prim"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            ]
          else [
            (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
            (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
            (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
            (hsPkgs."gi-webkit" or (errorHandler.buildDepError "gi-webkit"))
            ]);
        buildable = true;
        };
      };
    }