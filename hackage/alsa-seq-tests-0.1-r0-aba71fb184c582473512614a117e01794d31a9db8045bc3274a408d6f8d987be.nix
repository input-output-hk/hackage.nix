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
      specVersion = "1.2";
      identifier = { name = "alsa-seq-tests"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "";
      url = "";
      synopsis = "Tests for the ALSA sequencer library.";
      description = "Tests for the ALSA sequencer library.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "test1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."alsa" or (buildDepError "alsa"))
            ];
          };
        "test2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."alsa" or (buildDepError "alsa"))
            ];
          };
        "test3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."alsa" or (buildDepError "alsa"))
            ];
          };
        "test4" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."alsa" or (buildDepError "alsa"))
            ];
          };
        "test5" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."alsa" or (buildDepError "alsa"))
            ];
          };
        };
      };
    }