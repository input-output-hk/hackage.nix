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
      specVersion = "2.2";
      identifier = { name = "imm"; version = "1.6.0.0"; };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "chahine.moreau@gmail.com";
      author = "kamaradclimber, koral";
      homepage = "https://github.com/k0ral/imm";
      url = "";
      synopsis = "Execute arbitrary callbacks for each element of RSS/Atom feeds";
      description = "Cf README file";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."atom-conduit" or (errorHandler.buildDepError "atom-conduit"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."monad-time" or (errorHandler.buildDepError "monad-time"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
          (hsPkgs."rss-conduit" or (errorHandler.buildDepError "rss-conduit"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."timerep" or (errorHandler.buildDepError "timerep"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          ];
        buildable = true;
        };
      exes = {
        "imm" = {
          depends = [
            (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."imm" or (errorHandler.buildDepError "imm"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."atom-conduit" or (errorHandler.buildDepError "atom-conduit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."opml-conduit" or (errorHandler.buildDepError "opml-conduit"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
            (hsPkgs."rss-conduit" or (errorHandler.buildDepError "rss-conduit"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
            (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-with" or (errorHandler.buildDepError "streaming-with"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
            ];
          buildable = true;
          };
        "imm-writefile" = {
          depends = [
            (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."imm" or (errorHandler.buildDepError "imm"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."atom-conduit" or (errorHandler.buildDepError "atom-conduit"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."rss-conduit" or (errorHandler.buildDepError "rss-conduit"))
            (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-with" or (errorHandler.buildDepError "streaming-with"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            ];
          buildable = true;
          };
        "imm-sendmail" = {
          depends = [
            (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."imm" or (errorHandler.buildDepError "imm"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."atom-conduit" or (errorHandler.buildDepError "atom-conduit"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HaskellNet" or (errorHandler.buildDepError "HaskellNet"))
            (hsPkgs."HaskellNet-SSL" or (errorHandler.buildDepError "HaskellNet-SSL"))
            (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
            (hsPkgs."rss-conduit" or (errorHandler.buildDepError "rss-conduit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }