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
      identifier = { name = "aivika-lattice"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2023. David Sorokin <davsor@mail.ru>";
      maintainer = "David Sorokin <davsor@mail.ru>";
      author = "David Sorokin";
      homepage = "https://gitflic.ru/project/dsorokin/aivika-lattice";
      url = "";
      synopsis = "Nested discrete event simulation module for the Aivika library using lattice";
      description = "This experimental package extends the aivika-transformers [1] library and allows\nrunning nested discrete event simulations within lattice nodes, where\ntraversing the nodes of branching has a quadratic complexity.\n\n\\[1] <http://hackage.haskell.org/package/aivika-transformers>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."aivika" or (errorHandler.buildDepError "aivika"))
          (hsPkgs."aivika-transformers" or (errorHandler.buildDepError "aivika-transformers"))
        ];
        buildable = true;
      };
    };
  }