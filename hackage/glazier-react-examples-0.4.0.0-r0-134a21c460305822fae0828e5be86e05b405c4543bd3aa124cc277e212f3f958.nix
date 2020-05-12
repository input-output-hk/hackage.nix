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
      identifier = { name = "glazier-react-examples"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/glazier-react#readme";
      url = "";
      synopsis = "Examples of using glazier-react";
      description = "Examples of using glazier-react";
      buildType = "Simple";
      };
    components = {
      exes = {
        "glazier-react-todo" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."disposable" or (errorHandler.buildDepError "disposable"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."glazier" or (errorHandler.buildDepError "glazier"))
            (hsPkgs."glazier-react" or (errorHandler.buildDepError "glazier-react"))
            (hsPkgs."glazier-react-widget" or (errorHandler.buildDepError "glazier-react-widget"))
            (hsPkgs."javascript-extras" or (errorHandler.buildDepError "javascript-extras"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-concurrency" or (errorHandler.buildDepError "pipes-concurrency"))
            (hsPkgs."pipes-misc" or (errorHandler.buildDepError "pipes-misc"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optionals (compiler.isGhcjs && true) [
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."ghcjs-prim" or (errorHandler.buildDepError "ghcjs-prim"))
            ]) ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."ghcjs-base-stub" or (errorHandler.buildDepError "ghcjs-base-stub"));
          buildable = true;
          };
        };
      };
    }