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
      specVersion = "1.8";
      identifier = { name = "imm"; version = "1.2.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "koral <koral@mailoo.org>";
      author = "kamaradclimber, koral";
      homepage = "https://github.com/k0ral/imm";
      url = "";
      synopsis = "Execute arbitrary actions for each unread element of RSS/Atom feeds";
      description = "Cf README file";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."atom-conduit" or (errorHandler.buildDepError "atom-conduit"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."chunked-data" or (errorHandler.buildDepError "chunked-data"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dyre" or (errorHandler.buildDepError "dyre"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."HaskellNet" or (errorHandler.buildDepError "HaskellNet"))
          (hsPkgs."HaskellNet-SSL" or (errorHandler.buildDepError "HaskellNet-SSL"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."opml-conduit" or (errorHandler.buildDepError "opml-conduit"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
          (hsPkgs."rainbox" or (errorHandler.buildDepError "rainbox"))
          (hsPkgs."rss-conduit" or (errorHandler.buildDepError "rss-conduit"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."timerep" or (errorHandler.buildDepError "timerep"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          ];
        buildable = true;
        };
      exes = {
        "imm" = {
          depends = [
            (hsPkgs."imm" or (errorHandler.buildDepError "imm"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            ];
          buildable = true;
          };
        };
      };
    }