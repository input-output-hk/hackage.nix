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
      identifier = { name = "nix-paths"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "";
      homepage = "https://github.com/nixos/cabal2nix#readme";
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
        build-tools = (pkgs.lib).optionals (!flags.allow-relative-paths) [
          (hsPkgs.buildPackages.nix-instantiate or (pkgs.buildPackages.nix-instantiate or (errorHandler.buildToolDepError "nix-instantiate")))
          (hsPkgs.buildPackages.nix-build or (pkgs.buildPackages.nix-build or (errorHandler.buildToolDepError "nix-build")))
          (hsPkgs.buildPackages.nix-env or (pkgs.buildPackages.nix-env or (errorHandler.buildToolDepError "nix-env")))
          (hsPkgs.buildPackages.nix-store or (pkgs.buildPackages.nix-store or (errorHandler.buildToolDepError "nix-store")))
          ];
        buildable = true;
        };
      };
    }