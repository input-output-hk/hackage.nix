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
      identifier = { name = "aivika-branches"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2023. David Sorokin <davsor@mail.ru>";
      maintainer = "David Sorokin <davsor@mail.ru>";
      author = "David Sorokin";
      homepage = "https://gitflic.ru/project/dsorokin/aivika-branches";
      url = "";
      synopsis = "Nested discrete event simulation module for the Aivika library";
      description = "This package extends the aivika-transformers [1] library and allows creating branches to run\nnested simulations within simulation. The branches are very cheap but still not free.\n\nTo run the simulation experiment by the Monte-Carlo method, you can use additional packages.\nThey will allow you to save the simulation results in SQL database and then generate a report\nconsisting of HTML pages with charts, histograms, links to CSV tables, summary statistics and so on.\n\n\\[1] <http://hackage.haskell.org/package/aivika-transformers>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
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