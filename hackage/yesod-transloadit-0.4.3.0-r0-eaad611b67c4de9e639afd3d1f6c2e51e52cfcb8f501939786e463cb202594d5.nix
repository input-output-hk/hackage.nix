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
      identifier = { name = "yesod-transloadit"; version = "0.4.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "robertjflong@gmail.com";
      author = "Bob Long";
      homepage = "";
      url = "";
      synopsis = "Transloadit support for Yesod";
      description = "Drop in Transloadit capabilites for Yesod web apps";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."byteable" or (buildDepError "byteable"))
          (hsPkgs."yesod" or (buildDepError "yesod"))
          (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
          (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yesod-transloadit" or (buildDepError "yesod-transloadit"))
            (hsPkgs."yesod-test" or (buildDepError "yesod-test"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }