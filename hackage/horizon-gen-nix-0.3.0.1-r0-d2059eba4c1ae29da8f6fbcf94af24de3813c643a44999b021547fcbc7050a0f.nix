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
      specVersion = "3.0";
      identifier = { name = "horizon-gen-nix"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "2022 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Generate nix expressions from horizon-spec definitions";
      description = "Generate nix expressions from horizon-spec definitions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."cabal2nix" or (errorHandler.buildDepError "cabal2nix"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."distribution-nixpkgs" or (errorHandler.buildDepError "distribution-nixpkgs"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."horizon-spec" or (errorHandler.buildDepError "horizon-spec"))
          (hsPkgs."language-nix" or (errorHandler.buildDepError "language-nix"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-dhall-instance" or (errorHandler.buildDepError "path-dhall-instance"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "horizon-gen-nix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."horizon-gen-nix" or (errorHandler.buildDepError "horizon-gen-nix"))
            ];
          buildable = true;
          };
        "horizon-gen-nix-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."horizon-gen-nix" or (errorHandler.buildDepError "horizon-gen-nix"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            ];
          buildable = true;
          };
        };
      };
    }