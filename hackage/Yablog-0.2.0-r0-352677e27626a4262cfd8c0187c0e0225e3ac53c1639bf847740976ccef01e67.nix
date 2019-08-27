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
    flags = { dev = false; library-only = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Yablog"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hiromi ISHII";
      author = "Hiromi ISHII";
      homepage = "http://gitweb.konn-san.com/repo/Yablog/tree/master";
      url = "";
      synopsis = "A simple blog engine powered by Yesod.";
      description = "A simple blog engine powered by Yesod.";
      buildType = "Simple";
      };
    components = {
      "library" = {};
      exes = {
        "Yablog" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yesod-platform" or (buildDepError "yesod-platform"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            (hsPkgs."yesod-default" or (buildDepError "yesod-default"))
            (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
            (hsPkgs."yesod-recaptcha" or (buildDepError "yesod-recaptcha"))
            (hsPkgs."yesod-newsfeed" or (buildDepError "yesod-newsfeed"))
            (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
            (hsPkgs."clientsession" or (buildDepError "clientsession"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."persistent-mongoDB" or (buildDepError "persistent-mongoDB"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."shakespeare-css" or (buildDepError "shakespeare-css"))
            (hsPkgs."shakespeare-js" or (buildDepError "shakespeare-js"))
            (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
            (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."xml-hamlet" or (buildDepError "xml-hamlet"))
            (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            ];
          };
        };
      };
    }