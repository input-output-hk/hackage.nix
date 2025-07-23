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
      identifier = { name = "nixfmt"; version = "0.6.0"; };
      license = "MPL-2.0";
      copyright = "2022 Serokell, 2022 Lars Jellema";
      maintainer = "lars.jellema@gmail.com";
      author = "Lars Jellema";
      homepage = "https://github.com/serokell/nixfmt";
      url = "";
      synopsis = "An opinionated formatter for Nix";
      description = "This is an old version of nixfmt that is not maintained anymore and\ndeprecated in favor of the new official revision of it, which is not\ndistributed on Hackage anymore, but available in Nixpkgs as\n@pkgs.nixfmt-rfc-style@ and @pkgs.nixfmt@ after 25.11. See the\n[new repository readme](https://github.com/nixos/nixfmt?tab=readme-ov-file#nixfmt)\nfor more information.\n\nA formatter for Nix that ensures consistent and clear formatting by forgetting\nall existing formatting during parsing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
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
          depends = pkgs.lib.optionals (compiler.isGhcjs && true) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."nixfmt" or (errorHandler.buildDepError "nixfmt"))
          ];
          buildable = if compiler.isGhcjs && true then true else false;
        };
      };
    };
  }