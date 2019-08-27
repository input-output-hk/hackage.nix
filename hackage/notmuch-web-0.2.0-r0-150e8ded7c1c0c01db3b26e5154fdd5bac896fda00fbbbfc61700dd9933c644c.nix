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
    flags = { dev = false; library-only = false; no-icu = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "notmuch-web"; version = "0.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "John Lenz <lenz@math.uic.edu>";
      author = "John Lenz <lenz@math.uic.edu>";
      homepage = "https://bitbucket.org/wuzzeb/notmuch-web";
      url = "";
      synopsis = "A web interface to the notmuch email indexer";
      description = "An email client for the notmuch email indexer (<http://notmuchmail.org>),\nbuilt using Yesod.  This project implements a web server and uses bootstrap\nand jquery for the UI.  The client is fully functional, with searching, viewing,\nand composing email messages.  See\n<https://bitbucket.org/wuzzeb/notmuch-web/src/tip/ChangeLog> for recent changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.no-icu
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."attoparsec-conduit" or (buildDepError "attoparsec-conduit"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."email-validate" or (buildDepError "email-validate"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."markdown" or (buildDepError "markdown"))
            (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."process-conduit" or (buildDepError "process-conduit"))
            (hsPkgs."pwstore-fast" or (buildDepError "pwstore-fast"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."xss-sanitize" or (buildDepError "xss-sanitize"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."attoparsec-conduit" or (buildDepError "attoparsec-conduit"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."email-validate" or (buildDepError "email-validate"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."markdown" or (buildDepError "markdown"))
            (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."process-conduit" or (buildDepError "process-conduit"))
            (hsPkgs."pwstore-fast" or (buildDepError "pwstore-fast"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-icu" or (buildDepError "text-icu"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."xss-sanitize" or (buildDepError "xss-sanitize"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            ];
        };
      exes = {
        "notmuch-web" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."notmuch-web" or (buildDepError "notmuch-web"))
            (hsPkgs."pwstore-fast" or (buildDepError "pwstore-fast"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."notmuch-web" or (buildDepError "notmuch-web"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-test" or (buildDepError "yesod-test"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            ];
          };
        };
      };
    }