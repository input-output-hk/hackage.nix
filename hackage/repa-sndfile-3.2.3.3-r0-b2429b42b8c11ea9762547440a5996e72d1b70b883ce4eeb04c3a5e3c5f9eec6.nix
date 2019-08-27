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
    flags = { example = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "repa-sndfile"; version = "3.2.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<8c6794b6@gmail.com>";
      author = "<8c6794b6@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Reading and writing sound files with repa arrays";
      description = "Add supporting of reading and writing audio data with repa arrays in\nvarious format.\n\nThe code is using libsndfile and hsndfile package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hsndfile" or (buildDepError "hsndfile"))
          (hsPkgs."repa" or (buildDepError "repa"))
          ];
        };
      exes = {
        "rw" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsndfile" or (buildDepError "hsndfile"))
            (hsPkgs."hsndfile-vector" or (buildDepError "hsndfile-vector"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."repa-sndfile" or (buildDepError "repa-sndfile"))
            ];
          };
        "gensine" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hsndfile" or (buildDepError "hsndfile"))
            (hsPkgs."hsndfile-vector" or (buildDepError "hsndfile-vector"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."repa-sndfile" or (buildDepError "repa-sndfile"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hsndfile" or (buildDepError "hsndfile"))
            (hsPkgs."hsndfile-vector" or (buildDepError "hsndfile-vector"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."repa-sndfile" or (buildDepError "repa-sndfile"))
            ];
          };
        };
      };
    }