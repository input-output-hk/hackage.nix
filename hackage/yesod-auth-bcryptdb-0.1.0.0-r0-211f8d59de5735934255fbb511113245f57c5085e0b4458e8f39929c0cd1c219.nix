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
      identifier = { name = "yesod-auth-bcryptdb"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Yusent Chig";
      maintainer = "Yusent Chig <yusent@protonmail.com>";
      author = "Yusent Chig";
      homepage = "https://github.com/yusent/yesod-auth-bcryptdb";
      url = "";
      synopsis = "Authentication plugin for Yesod.";
      description = "This package provides authentication with passwords hashed and salted using\nbcrypt which are stored in a database, and works best in situations where an\nadministrator is involved in setting up a user with an initial password.\n\nThe complete login process, including a default form, is implemented by\nthis plugin, but the application developer must design the interfaces\nfor setting up users and allowing them to change their own passwords,\nsince only the low-level password-setting functions are provided by this\npackage.  (Note that other authentication plugins may be more appropriate\nif you wish to use email verification to set up accounts).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bcrypt" or (buildDepError "bcrypt"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
          (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
          (hsPkgs."yesod-persistent" or (buildDepError "yesod-persistent"))
          ];
        };
      };
    }