let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { allow-relative-paths = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "nix-paths"; version = "1.0.1"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."process" or (buildDepError "process"))
          ];
        build-tools = (pkgs.lib).optionals (!flags.allow-relative-paths) [
          (hsPkgs.buildPackages.nix-instantiate or (pkgs.buildPackages.nix-instantiate or (buildToolDepError "nix-instantiate")))
          (hsPkgs.buildPackages.nix-build or (pkgs.buildPackages.nix-build or (buildToolDepError "nix-build")))
          (hsPkgs.buildPackages.nix-env or (pkgs.buildPackages.nix-env or (buildToolDepError "nix-env")))
          (hsPkgs.buildPackages.nix-store or (pkgs.buildPackages.nix-store or (buildToolDepError "nix-store")))
          (hsPkgs.buildPackages.nix-hash or (pkgs.buildPackages.nix-hash or (buildToolDepError "nix-hash")))
          ];
        };
      };
    }