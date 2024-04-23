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
      specVersion = "1.12";
      identifier = { name = "neolua"; version = "1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "Copyright (c) 2023 Marc Jakobi";
      maintainer = "mrcjkb89@outlook.com";
      author = "Marc Jakobi";
      homepage = "https://github.com/nvim-neorocks/neorocks#readme";
      url = "";
      synopsis = "A CLI adapter to map Lua's CLI to Neovim's CLI for lua interpretation.";
      description = "A CLI adapter to map Lua's CLI to Neovim's CLI for lua interpretation. For use with luarocks test.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "neolua" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }