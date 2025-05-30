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
    flags = { lua = true; server = true; nightly = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "pandoc-cli"; version = "3.7.0.2"; };
      license = "GPL-2.0-or-later";
      copyright = "(c) 2006-2024 John MacFarlane";
      maintainer = "John MacFarlane <jgm@berkeley.edu>";
      author = "John MacFarlane <jgm@berkeley.edu>";
      homepage = "https://pandoc.org";
      url = "";
      synopsis = "Conversion between documentation formats";
      description = "Pandoc-cli provides a command-line executable that uses the\npandoc library to convert between markup formats.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pandoc" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ pkgs.lib.optionals (flags.nightly) [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ]) ++ pkgs.lib.optionals (flags.server) [
            (hsPkgs."pandoc-server" or (errorHandler.buildDepError "pandoc-server"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ]) ++ pkgs.lib.optionals (flags.lua) [
            (hsPkgs."hslua-cli" or (errorHandler.buildDepError "hslua-cli"))
            (hsPkgs."pandoc-lua-engine" or (errorHandler.buildDepError "pandoc-lua-engine"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          buildable = true;
        };
      };
    };
  }