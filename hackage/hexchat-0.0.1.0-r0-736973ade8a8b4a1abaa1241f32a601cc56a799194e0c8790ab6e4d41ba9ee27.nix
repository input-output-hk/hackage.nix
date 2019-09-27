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
      specVersion = "2.0";
      identifier = { name = "hexchat"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "(C) 2017 mniip";
      maintainer = "mniip@mniip.com";
      author = "mniip";
      homepage = "https://github.com/mniip/hexchat-haskell";
      url = "";
      synopsis = "Haskell scripting interface for HexChat";
      description = "This package builds a shared object ready for loading into HexChat, that will compile and interpret scripts written in Haskell; and also a Haskell library that said scripts should import and use to interface with HexChat.\n\nAt the moment the scripting interface is not finalized and may (and will) change in a future.\n\nAt the moment only Linux is supported.\n\nFor instructions on how to write a script, see the 'HexChat' module.\n\nCurrently the plugin only understands the classic @/load@, @/unload@, @/reload@ commands.\n\nTo automatically load the plugin symlink or copy @~\\/.cabal\\/lib\\/libhexchat-haskell.so@ (or @\\/usr\\/local\\/lib\\/libhexchat-haskell.so@) to @~\\/.config\\/hexchat\\/addons\\/@ (or @\\/usr\\/lib\\/hexchat\\/plugins\\/@).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        buildable = true;
        };
      foreignlibs = {
        "hexchat-haskell" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghci" or (buildDepError "ghci"))
            (hsPkgs."hexchat" or (buildDepError "hexchat"))
            ];
          buildable = true;
          };
        };
      };
    }