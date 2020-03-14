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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "nixfmt" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."nixfmt" or (buildDepError "nixfmt"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        "js-interface" = {
          depends = (pkgs.lib).optionals (compiler.isGhcjs && true) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            (hsPkgs."nixfmt" or (buildDepError "nixfmt"))
            ];
          buildable = if compiler.isGhcjs && true then true else false;
          };
        };
      };
    }