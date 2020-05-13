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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      foreignlibs = {
        "hexchat-haskell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghci" or (errorHandler.buildDepError "ghci"))
            (hsPkgs."hexchat" or (errorHandler.buildDepError "hexchat"))
            ];
          buildable = true;
          };
        };
      };
    }