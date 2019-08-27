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
      specVersion = "1.8";
      identifier = { name = "labyrinth-server"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "a@koterpillar.com";
      author = "Alexey Kotlyarov";
      homepage = "https://github.com/koterpillar/labyrinth-server";
      url = "";
      synopsis = "A complicated turn-based game - Web server";
      description = "Players take turns in a labyrinth, competing with each\nother to pick a treasure and carry it out. They only know\neveryone's moves and responses, but do not see the map and\nmust deduce it themselves.\nThis package contains a Web server to play the game.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "labyrinth-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."labyrinth" or (buildDepError "labyrinth"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."derive" or (buildDepError "derive"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."shakespeare-css" or (buildDepError "shakespeare-css"))
            (hsPkgs."shakespeare-js" or (buildDepError "shakespeare-js"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."labyrinth" or (buildDepError "labyrinth"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."derive" or (buildDepError "derive"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."shakespeare-css" or (buildDepError "shakespeare-css"))
            (hsPkgs."shakespeare-js" or (buildDepError "shakespeare-js"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."HTF" or (buildDepError "HTF"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-test" or (buildDepError "wai-test"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            ];
          };
        };
      };
    }