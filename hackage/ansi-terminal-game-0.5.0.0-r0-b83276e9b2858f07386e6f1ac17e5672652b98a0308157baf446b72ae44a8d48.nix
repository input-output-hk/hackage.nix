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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ansi-terminal-game"; version = "0.5.0.0"; };
      license = "GPL-3.0-only";
      copyright = "© 2017-2019 Francesco Ariis";
      maintainer = "fa-ml@ariis.it";
      author = "Francesco Ariis";
      homepage = "none-yet";
      url = "";
      synopsis = "sdl-like functions for terminal applications, based on\nansi-terminal";
      description = "Library which aims to replicate standard 2d game\nfunctions (blit, ticks, timers, etc.) in a terminal\nsetting.\nAims to be cross compatible (based on \"ansi-terminal\",\nno unix-only dependencies), practical.\nSee example folder for some minimal programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."linebreak" or (buildDepError "linebreak"))
          (hsPkgs."mintty" or (buildDepError "mintty"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."terminal-size" or (buildDepError "terminal-size"))
          (hsPkgs."timers-tick" or (buildDepError "timers-tick"))
          ];
        buildable = true;
        };
      exes = {
        "alone" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ansi-terminal-game" or (buildDepError "ansi-terminal-game"))
            ];
          buildable = if flags.examples then true else false;
          };
        "alone-playback" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ansi-terminal-game" or (buildDepError "ansi-terminal-game"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."linebreak" or (buildDepError "linebreak"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."terminal-size" or (buildDepError "terminal-size"))
            (hsPkgs."timers-tick" or (buildDepError "timers-tick"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }