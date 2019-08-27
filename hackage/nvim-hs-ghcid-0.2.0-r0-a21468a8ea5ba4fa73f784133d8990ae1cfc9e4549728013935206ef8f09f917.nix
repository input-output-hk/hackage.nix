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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nvim-hs-ghcid"; version = "0.2.0"; };
      license = "Apache-2.0";
      copyright = "Sebastian Witte <woozletoff@gmail.com>";
      maintainer = "woozletoff@gmail.com";
      author = "Sebastian Witte";
      homepage = "https://github.com/saep/nvim-hs-ghcid";
      url = "";
      synopsis = "Neovim plugin that runs ghcid to update the quickfix list";
      description = "This plugin uses the nvim-hs plugin backend for neovim and\nfills the quickfix list on file-saves with the errors and\nwarnings that ghcid determines.\n\nThe only limitation for this tool is that it needs a .cabal\nfile to work.\n\nThis plugin provides 3 commands:\n\n@:GhcidStart@ will prompt you for the configuration you\nwant to use. It should guess a reasonable option based on\nthe files present in your project directory and so you will\njust have to press enter all the time. If you provide a\nbang, these questions will not be asked.\n\n@:GhcidStop@ stops the current ghcid process.\n\n@:GhcidRestart@ combines the two previous commands.\n\nSimply import the @plugin@ definition from \"Neovim.Ghcid\"\nand add it to your plugin list.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."nvim-hs" or (buildDepError "nvim-hs"))
          (hsPkgs."nvim-hs-contrib" or (buildDepError "nvim-hs-contrib"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."ghcid" or (buildDepError "ghcid"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }