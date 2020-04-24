{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "hexchat"; version = "0.0.2.0"; };
      license = "MIT";
      copyright = "(C) 2017 mniip";
      maintainer = "mniip@mniip.com";
      author = "mniip";
      homepage = "https://github.com/mniip/hexchat-haskell";
      url = "";
      synopsis = "Haskell scripting interface for HexChat";
      description = "This package builds a shared object ready for loading into HexChat, that will compile and interpret scripts written in Haskell; and also a Haskell library that said scripts should import and use to interface with HexChat.\n\nAt the moment the scripting interface is not finalized and may (and will) change in a future.\n\nAt the moment only Linux is supported.\n\nFor instructions on how to write a script, see the 'HexChat' module.\n\nThe plugin understands the classic @/load@, @/unload@, @/reload@ commands, as well as:\n\n> /hs load <filename>\n> /hs unload <filename>\n> /hs reload <filename>\n> /hs list\n\nTo automatically load the plugin symlink or copy @~\\/.cabal\\/lib\\/libhexchat-haskell.so@ (or @\\/usr\\/local\\/lib\\/libhexchat-haskell.so@) to @~\\/.config\\/hexchat\\/addons\\/@ (or @\\/usr\\/lib\\/hexchat\\/plugins\\/@).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      foreignlibs = {
        "hexchat-haskell" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghci" or ((hsPkgs.pkgs-errors).buildDepError "ghci"))
            (hsPkgs."hexchat" or ((hsPkgs.pkgs-errors).buildDepError "hexchat"))
            ];
          buildable = true;
          };
        };
      };
    }