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
      identifier = { name = "lambdacms-core"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "(c) 2014-2015 Hoppinger";
      maintainer = "cies@AT-hoppinger.com";
      author = "Cies Breijs, Mats Rietdijk, Rutger van Aalst";
      homepage = "http://lambdacms.org";
      url = "";
      synopsis = "LambdaCms 'core' subsite for Yesod apps";
      description = "LambdaCms is a Content Management System (CMS) in Haskell.\nusing Yesod.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."yesod" or (buildDepError "yesod"))
          (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
          (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
          (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."friendly-time" or (buildDepError "friendly-time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."gravatar" or (buildDepError "gravatar"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."lists" or (buildDepError "lists"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."classy-prelude-yesod" or (buildDepError "classy-prelude-yesod"))
            (hsPkgs."lambdacms-core" or (buildDepError "lambdacms-core"))
            ];
          };
        };
      };
    }