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
      specVersion = "1.10";
      identifier = { name = "nc-indicators"; version = "0.3"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Mihaly Barasz <klao@nilcons.com>, Gergely Risko <errge@nilcons.com>";
      author = "Mihaly Barasz, Gergely Risko";
      homepage = "https://github.com/nilcons/nc-indicators";
      url = "";
      synopsis = "CPU load and memory usage indicators for i3bar";
      description = "@nc-indicators@ displays a CPU load and memory usage mini-graphs in\nyour @i3bar@, much like Gnome's @indicator-multiload@ applet.\n\nTo use @nc-indicators@ simply @exec@ it on startup:\n\n@\nexec --no-startup-id nc-indicators\n@\n\nYou can turn off either indicator and change the update interval, eg.:\n\n@\nexec --no-startup-id nc-indicators --show_mem=0 --update_interval=300\n@\n\n@nc-indicators@ uses the standard system tray icon protocol, so it\ncan be used with any system tray-like application, not just\n@i3bar@. But it was originally created to be used with @i3bar@.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "nc-indicators" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."hflags" or (buildDepError "hflags"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }