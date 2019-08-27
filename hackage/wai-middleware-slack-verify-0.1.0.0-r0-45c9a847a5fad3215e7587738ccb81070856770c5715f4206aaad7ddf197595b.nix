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
    flags = { build-example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-slack-verify";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "Copyright (c) 2018 Brandon Hamilton";
      maintainer = "brandon.hamilton@gmail.com";
      author = "Brandon Hamilton";
      homepage = "https://github.com/brandonhamilton/wai-middleware-slack-verify#readme";
      url = "";
      synopsis = "WAI Slack request verification middleware";
      description = "Middleware for WAI that uses signed secrets to verify Slack requests.\\n\nSee <https://api.slack.com/docs/verifying-requests-from-slack>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."wai" or (buildDepError "wai"))
          ];
        };
      exes = {
        "bot-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."wai" or (buildDepError "wai"))
            ] ++ (pkgs.lib).optionals (flags.build-example) [
            (hsPkgs."linklater" or (buildDepError "linklater"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai-middleware-slack-verify" or (buildDepError "wai-middleware-slack-verify"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          };
        };
      tests = {
        "wai-middleware-slack-verify-test" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-middleware-slack-verify" or (buildDepError "wai-middleware-slack-verify"))
            ];
          };
        };
      };
    }