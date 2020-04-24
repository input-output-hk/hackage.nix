{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or ((hsPkgs.pkgs-errors).buildDepError "parser-combinators"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "nixfmt" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."nixfmt" or ((hsPkgs.pkgs-errors).buildDepError "nixfmt"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        "js-interface" = {
          depends = (pkgs.lib).optionals (compiler.isGhcjs && true) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."nixfmt" or ((hsPkgs.pkgs-errors).buildDepError "nixfmt"))
            ];
          buildable = if compiler.isGhcjs && true then true else false;
          };
        };
      };
    }