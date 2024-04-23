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
      identifier = { name = "aivika-realtime"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2023. David Sorokin <davsor@mail.ru>";
      maintainer = "David Sorokin <davsor@mail.ru>";
      author = "David Sorokin";
      homepage = "https://gitflic.ru/project/dsorokin/aivika-realtime";
      url = "";
      synopsis = "Soft real-time simulation module for the Aivika library";
      description = "This package allows running soft real-time simulations based on the aivika-transformers [1] library.\n\n\\[1] <http://hackage.haskell.org/package/aivika-transformers>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."aivika" or (errorHandler.buildDepError "aivika"))
          (hsPkgs."aivika-transformers" or (errorHandler.buildDepError "aivika-transformers"))
        ];
        buildable = true;
      };
    };
  }