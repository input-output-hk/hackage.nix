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
      identifier = { name = "kuifje"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marton.bognar@student.kuleuven.be";
      author = "Marton Bognar";
      homepage = "https://github.com/martonbognar/kuifje";
      url = "";
      synopsis = "A Quantitative Information Flow aware programming language.";
      description = "A prototype for a Quantitative Information Flow aware programming language.\nBased on the paper: \"Quantitative Information Flow with Monads in Haskell\" by Jeremy Gibbons, Annabelle McIver, Carroll Morgan, and Tom Schrijvers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }