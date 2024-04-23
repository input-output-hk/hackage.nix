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
    flags = { allow-relative-paths = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "nix-paths"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons";
      homepage = "https://github.com/peti/nix-paths";
      url = "";
      synopsis = "Knowledge of Nix's installation directories.";
      description = "This module provides full paths to various Nix\nutilities, like @nix-store@, @nix-instantiate@, and\n@nix-env@.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        build-tools = pkgs.lib.optionals (!flags.allow-relative-paths) [
          (hsPkgs.buildPackages.nix-instantiate.components.exes.nix-instantiate or (pkgs.buildPackages.nix-instantiate or (errorHandler.buildToolDepError "nix-instantiate:nix-instantiate")))
          (hsPkgs.buildPackages.nix-build.components.exes.nix-build or (pkgs.buildPackages.nix-build or (errorHandler.buildToolDepError "nix-build:nix-build")))
          (hsPkgs.buildPackages.nix-env.components.exes.nix-env or (pkgs.buildPackages.nix-env or (errorHandler.buildToolDepError "nix-env:nix-env")))
          (hsPkgs.buildPackages.nix-store.components.exes.nix-store or (pkgs.buildPackages.nix-store or (errorHandler.buildToolDepError "nix-store:nix-store")))
        ];
        buildable = true;
      };
    };
  }