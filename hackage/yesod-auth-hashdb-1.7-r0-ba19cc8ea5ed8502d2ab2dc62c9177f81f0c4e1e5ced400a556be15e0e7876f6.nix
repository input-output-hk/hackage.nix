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
      specVersion = "1.8.0";
      identifier = { name = "yesod-auth-hashdb"; version = "1.7"; };
      license = "MIT";
      copyright = "";
      maintainer = "Paul Rouse <pyr@doynton.org>";
      author = "Patrick Brisbin, later changes Paul Rouse";
      homepage = "https://github.com/paul-rouse/yesod-auth-hashdb";
      url = "";
      synopsis = "Authentication plugin for Yesod.";
      description = "This package is the Yesod.Auth.HashDB plugin, originally included as part\nof yesod-auth, but now modified to be more secure and placed in a separate\npackage.\n\nIt provides authentication using hashed passwords stored in a database,\nand works best in situations where an administrator is involved in\nsetting up a user with an initial password.\n\nThe complete login process, including a default form, is implemented by\nthis plugin, but the application developer must design the interfaces\nfor setting up users and allowing them to change their own passwords,\nsince only the low-level password-setting functions are provided by this\npackage.  (Note that other authentication plugins may be more appropriate\nif you wish to use email verification to set up accounts).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
          (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."yesod-persistent" or (buildDepError "yesod-persistent"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yesod-auth-hashdb" or (buildDepError "yesod-auth-hashdb"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "integration" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."basic-prelude" or (buildDepError "basic-prelude"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
            (hsPkgs."yesod-auth-hashdb" or (buildDepError "yesod-auth-hashdb"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."yesod-test" or (buildDepError "yesod-test"))
            ];
          };
        };
      };
    }