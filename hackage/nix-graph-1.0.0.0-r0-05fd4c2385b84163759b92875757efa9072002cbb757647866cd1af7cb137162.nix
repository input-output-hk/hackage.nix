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
      specVersion = "2.2";
      identifier = { name = "nix-graph"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Arista Networks";
      maintainer = "Arista Networks <opensource@awakesecurity.com>";
      author = "Arista Networks <opensource@awakesecurity.com>";
      homepage = "https://github.com/awakesecurity/nix-graph";
      url = "";
      synopsis = "Reify the Nix build graph into a Haskell graph data structure";
      description = "Reify the Nix build graph into a Haskell graph data structure";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."nix-derivation" or (errorHandler.buildDepError "nix-derivation"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ttrie" or (errorHandler.buildDepError "ttrie"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
      exes = {
        "nix-graph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."nix-graph" or (errorHandler.buildDepError "nix-graph"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
    };
  }