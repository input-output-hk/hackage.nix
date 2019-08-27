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
      identifier = { name = "hapistrano"; version = "0.2.0.2"; };
      license = "MIT";
      copyright = "2015 Stack Builders Inc.";
      maintainer = "justin@stackbuilders.com";
      author = "Justin Leitgeb";
      homepage = "https://github.com/stackbuilders/hapistrano";
      url = "";
      synopsis = "A deployment library for Haskell applications";
      description = "\nHapistrano makes it easy to reliably deploy Haskell applications\nto a server.\n\nFollowing popular libraries like Ruby's <http://capistranorb.com/\nCapistrano>, Hapistrano does the work of building the application\nwith dependencies into a distinct folder, and then atomically moves\na symlink to the latest complete build.\n\nThis allows for atomic switchovers to new application code after the\nbuild is complete. Rollback is even simpler, since Hapistrano can\njust point the `current` symlink to the previous release.\n\nSee <https://github.com/stackbuilders/hapistrano the project readme on GitHub>\nfor more information.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."time-locale-compat" or (buildDepError "time-locale-compat"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."base-compat" or (buildDepError "base-compat"))
          ];
        };
      exes = {
        "hap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time-locale-compat" or (buildDepError "time-locale-compat"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            ];
          };
        };
      tests = {
        "hapistrano-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time-locale-compat" or (buildDepError "time-locale-compat"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      };
    }