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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "feed-collect"; version = "0.2.0.2"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-interval" or (errorHandler.buildDepError "time-interval"))
          (hsPkgs."timerep" or (errorHandler.buildDepError "timerep"))
          (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }