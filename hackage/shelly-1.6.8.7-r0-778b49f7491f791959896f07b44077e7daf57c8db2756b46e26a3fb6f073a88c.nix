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
    flags = { lifted = false; build-examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "shelly"; version = "1.6.8.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber, Petr Rockai";
      homepage = "https://github.com/yesodweb/Shelly.hs";
      url = "";
      synopsis = "shell-like (systems) programming in Haskell";
      description = "Shelly provides convenient systems programming in Haskell,\nsimilar in spirit to POSIX shells. Shelly:\n\n* is aimed at convenience and getting things done rather than\nbeing a demonstration of elegance.\n\n* has detailed and useful error messages\n\n* maintains its own environment, making it thread-safe.\n\n* is modern, using Text and system-filepath/system-fileio\n\nShelly is originally forked from the Shellish package.\n\nSee the shelly-extra package for additional functionality.\n\nAn overview is available in the README: <https://github.com/yesodweb/Shelly.hs/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."enclosed-exceptions" or (buildDepError "enclosed-exceptions"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
        };
      exes = {
        "drain" = {
          depends = (pkgs.lib).optionals (flags.build-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "run-handles" = {
          depends = (pkgs.lib).optionals (flags.build-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "Color" = {
          depends = (pkgs.lib).optionals (flags.build-examples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "shelly-testsuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
            (hsPkgs."enclosed-exceptions" or (buildDepError "enclosed-exceptions"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            ];
          };
        };
      };
    }