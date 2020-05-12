{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { time15 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "irc-core"; version = "1.1"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (if flags.time15
          then [ (hsPkgs."time" or (errorHandler.buildDepError "time")) ]
          else [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ]);
        buildable = true;
        };
      exes = {
        "glirc" = {
          depends = [
            (hsPkgs."irc-core" or (errorHandler.buildDepError "irc-core"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-system" or (errorHandler.buildDepError "x509-system"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."config-value" or (errorHandler.buildDepError "config-value"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."haskell-lexer" or (errorHandler.buildDepError "haskell-lexer"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }