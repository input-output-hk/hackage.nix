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
    flags = { time15 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "irc-core"; version = "1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2015 Eric Mertens";
      maintainer = "Eric Mertens <emertens@gmail.com>";
      author = "Eric Mertens";
      homepage = "https://github.com/glguy/irc-core";
      url = "";
      synopsis = "An IRC client library and text client";
      description = "This package provides an IRC connection library as well as a console-based IRC client\nthat uses the library.\n\n/Library module breakdown/\n\n* \"Irc.Cmd\" - Functions for generating IRC protocol message for client-to-server\n\n* \"Irc.Core\" - Functions for parsing low-level IRC messages into mid-level IRC messages\n\n* \"Irc.Core.Prisms\" - Prisms for all of the mid-level IRC message constructors\n\n* \"Irc.Format\" - Functions for parsing and rendering low-level IRC protocol messages\n\n* \"Irc.Message\" - High-level IRC event messages for client interpretation\n\n* \"Irc.Model\" - Functions for interpreting mid-level IRC messages to generate high-level\nevent messages and to maintain a consistent view of the connection\n\n* \"Irc.RateLimit\" - Functions to assist with rate-limiting outgoing client messages\n\n* \"Irc.Time\" - Internal compatibility module for time-1.4 and time-1.5 interop\n\n/Library module breakdown/\n\n* \"Main\" - Main client module\n\n* \"ClientState\" - Types and operations representing the full state of the client\n\n* \"CommandArgs\" - Types and functions for interpreting the initial client configuration\n\n* \"CommandParser\" - Types and functions for parsing and pretty printing IRC commands\n\n* \"Connection\" - Types and functions for establishing a plain and TLS connections\n\n* \"CtcpHandler\" - Event handler for CTCP messages\n\n* \"EditBox\" - Types and functions for managing the input box along the bottom of the client\n\n* \"HaskelHighlighter\" - Haskell syntax highlighting support\n\n* \"ImageUtils\" - Functions to support the various view construction\n\n* \"Moderation\" - Implementation of various IRC channel moderation automation\n\n* \"ServerSettings\" - Types for defining connection parameters for an IRC server\n\n* \"Views.BanList\" - Functions to generate the ban list view\n\n* \"Views.Channel\" - Functions to generate message list views\n\n* \"Views.ChannelInfo\" - Functions to generate metadata views for channels\n\nSee the associated README file for help using the client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          ] ++ (if flags.time15
          then [ (hsPkgs."time" or (buildDepError "time")) ]
          else [
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            ]);
        };
      exes = {
        "glirc" = {
          depends = [
            (hsPkgs."irc-core" or (buildDepError "irc-core"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."x509" or (buildDepError "x509"))
            (hsPkgs."x509-system" or (buildDepError "x509-system"))
            (hsPkgs."x509-store" or (buildDepError "x509-store"))
            (hsPkgs."x509-validation" or (buildDepError "x509-validation"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."config-value" or (buildDepError "config-value"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."haskell-lexer" or (buildDepError "haskell-lexer"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            ];
          };
        };
      };
    }