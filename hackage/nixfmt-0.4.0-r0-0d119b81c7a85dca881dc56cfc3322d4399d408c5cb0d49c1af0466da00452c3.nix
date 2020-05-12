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
      identifier = { name = "nixfmt"; version = "0.4.0"; };
      license = "MPL-2.0";
      copyright = "2019 Serokell, 2019 Lars Jellema";
      maintainer = "lars.jellema@gmail.com";
      author = "Lars Jellema";
      homepage = "https://github.com/serokell/nixfmt";
      url = "";
      synopsis = "An opinionated formatter for Nix";
      description = "A formatter for Nix that ensures consistent and clear formatting by forgetting\nall existing formatting during parsing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "nixfmt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."nixfmt" or (errorHandler.buildDepError "nixfmt"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        "js-interface" = {
          depends = (pkgs.lib).optionals (compiler.isGhcjs && true) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."nixfmt" or (errorHandler.buildDepError "nixfmt"))
            ];
          buildable = if compiler.isGhcjs && true then true else false;
          };
        };
      };
    }