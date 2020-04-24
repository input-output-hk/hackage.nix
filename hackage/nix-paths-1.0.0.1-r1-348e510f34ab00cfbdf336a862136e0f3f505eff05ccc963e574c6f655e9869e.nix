{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        build-tools = (pkgs.lib).optionals (!flags.allow-relative-paths) [
          (hsPkgs.buildPackages.nix-instantiate or (pkgs.buildPackages.nix-instantiate or ((hsPkgs.pkgs-errors).buildToolDepError "nix-instantiate")))
          (hsPkgs.buildPackages.nix-build or (pkgs.buildPackages.nix-build or ((hsPkgs.pkgs-errors).buildToolDepError "nix-build")))
          (hsPkgs.buildPackages.nix-env or (pkgs.buildPackages.nix-env or ((hsPkgs.pkgs-errors).buildToolDepError "nix-env")))
          (hsPkgs.buildPackages.nix-store or (pkgs.buildPackages.nix-store or ((hsPkgs.pkgs-errors).buildToolDepError "nix-store")))
          ];
        buildable = true;
        };
      };
    }