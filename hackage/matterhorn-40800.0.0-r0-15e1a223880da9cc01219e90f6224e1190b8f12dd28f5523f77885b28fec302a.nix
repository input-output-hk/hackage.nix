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
      specVersion = "1.18";
      identifier = { name = "matterhorn"; version = "40800.0.0"; };
      license = "BSD-3-Clause";
      copyright = "©2016-2017 AUTHORS.txt";
      maintainer = "matterhorn@galois.com";
      author = "matterhorn@galois.com";
      homepage = "";
      url = "";
      synopsis = "Terminal client for the Mattermost chat system";
      description = "This is a terminal client for the Mattermost chat\nsystem. Please see the README for a list of\nfeatures and information on getting started.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "matterhorn" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mattermost-api" or (buildDepError "mattermost-api"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."config-ini" or (buildDepError "config-ini"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."brick-skylighting" or (buildDepError "brick-skylighting"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."word-wrap" or (buildDepError "word-wrap"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."text-zipper" or (buildDepError "text-zipper"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."xdg-basedir" or (buildDepError "xdg-basedir"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."cheapskate" or (buildDepError "cheapskate"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."gitrev" or (buildDepError "gitrev"))
            (hsPkgs."Hclip" or (buildDepError "Hclip"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."aspell-pipe" or (buildDepError "aspell-pipe"))
            (hsPkgs."stm-delay" or (buildDepError "stm-delay"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."skylighting" or (buildDepError "skylighting"))
            (hsPkgs."timezone-olson" or (buildDepError "timezone-olson"))
            (hsPkgs."timezone-series" or (buildDepError "timezone-series"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          };
        };
      tests = {
        "test_messages" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cheapskate" or (buildDepError "cheapskate"))
            (hsPkgs."checkers" or (buildDepError "checkers"))
            (hsPkgs."config-ini" or (buildDepError "config-ini"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."Hclip" or (buildDepError "Hclip"))
            (hsPkgs."mattermost-api" or (buildDepError "mattermost-api"))
            (hsPkgs."mattermost-api-qc" or (buildDepError "mattermost-api-qc"))
            (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-text" or (buildDepError "quickcheck-text"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-zipper" or (buildDepError "text-zipper"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."timezone-olson" or (buildDepError "timezone-olson"))
            (hsPkgs."timezone-series" or (buildDepError "timezone-series"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."Unique" or (buildDepError "Unique"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."xdg-basedir" or (buildDepError "xdg-basedir"))
            ];
          };
        };
      };
    }