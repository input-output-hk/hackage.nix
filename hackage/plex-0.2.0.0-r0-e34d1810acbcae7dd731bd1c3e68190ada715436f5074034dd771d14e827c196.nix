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
    flags = { buildexe = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "plex"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2018 phlummox";
      maintainer = "phlummox2@gmail.com";
      author = "phlummox";
      homepage = "https://github.com/phlummox/hs-plex#readme";
      url = "";
      synopsis = "run a subprocess, combining stdout and stderr";
      description = "Execute a command, redirect stderr into stdout, and return\nthe combined result (optionally, with a timeout).\nIrritatingly difficult to do using the \"process\" library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."unix" or (buildDepError "unix"))
          ];
        };
      exes = {
        "try-plex" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ] ++ (pkgs.lib).optionals (flags.buildexe) [
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."plex" or (buildDepError "plex"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          };
        };
      tests = {
        "plex-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."plex" or (buildDepError "plex"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }