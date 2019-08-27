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
      identifier = { name = "feed-collect"; version = "0.2.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/feed-collect/";
      url = "";
      synopsis = "Watch RSS/Atom feeds (and do with them whatever you like).";
      description = "RSS and Atom are common technologies for publishing news updates and watching\nthen on the client side. Client programs do a variety of things with them:\nDisplay feed items for a human user to read, send them into IRC, convert them\nto e-mail messages, aggregate them into larger feeds (\"planet\"s) and so on.\n\nThis package tries to provide a generic API for handling a stream of news\nitems, not tied to any specific use case.\n\nUsing the library you can launch a thread which collects news items, and\nhandles them using a custom action you provide. Expected usage in many cases\nis to push items (or specific parts of them) into a 'Chan', and have your\napplication's event loop thread do the actual logic.\n\nSome related packages which make specific uses of feeds are @imm@ and\n@rss2irc@. These 2 packages have inspired some ideas here.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."feed" or (buildDepError "feed"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."time-interval" or (buildDepError "time-interval"))
          (hsPkgs."timerep" or (buildDepError "timerep"))
          (hsPkgs."time-units" or (buildDepError "time-units"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ];
        };
      };
    }