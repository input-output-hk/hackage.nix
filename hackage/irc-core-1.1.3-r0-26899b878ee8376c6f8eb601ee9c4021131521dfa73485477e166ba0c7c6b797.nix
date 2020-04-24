{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          ] ++ (if flags.time15
          then [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ]
          else [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            ]);
        buildable = true;
        };
      exes = {
        "glirc" = {
          depends = [
            (hsPkgs."irc-core" or ((hsPkgs.pkgs-errors).buildDepError "irc-core"))
            (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
            (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
            (hsPkgs."x509-system" or ((hsPkgs.pkgs-errors).buildDepError "x509-system"))
            (hsPkgs."x509-store" or ((hsPkgs.pkgs-errors).buildDepError "x509-store"))
            (hsPkgs."x509-validation" or ((hsPkgs.pkgs-errors).buildDepError "x509-validation"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."config-value" or ((hsPkgs.pkgs-errors).buildDepError "config-value"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."haskell-lexer" or ((hsPkgs.pkgs-errors).buildDepError "haskell-lexer"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            ];
          buildable = true;
          };
        };
      };
    }