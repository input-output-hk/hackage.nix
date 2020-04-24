{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "imm"; version = "1.5.0.0"; };
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
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."atom-conduit" or ((hsPkgs.pkgs-errors).buildDepError "atom-conduit"))
          (hsPkgs."base-noprelude" or ((hsPkgs.pkgs-errors).buildDepError "base-noprelude"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."dyre" or ((hsPkgs.pkgs-errors).buildDepError "dyre"))
          (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."HaskellNet" or ((hsPkgs.pkgs-errors).buildDepError "HaskellNet"))
          (hsPkgs."HaskellNet-SSL" or ((hsPkgs.pkgs-errors).buildDepError "HaskellNet-SSL"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."mime-mail" or ((hsPkgs.pkgs-errors).buildDepError "mime-mail"))
          (hsPkgs."monad-time" or ((hsPkgs.pkgs-errors).buildDepError "monad-time"))
          (hsPkgs."monoid-subclasses" or ((hsPkgs.pkgs-errors).buildDepError "monoid-subclasses"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."opml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "opml-conduit"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."refined" or ((hsPkgs.pkgs-errors).buildDepError "refined"))
          (hsPkgs."relude" or ((hsPkgs.pkgs-errors).buildDepError "relude"))
          (hsPkgs."rss-conduit" or ((hsPkgs.pkgs-errors).buildDepError "rss-conduit"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."streaming-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-with" or ((hsPkgs.pkgs-errors).buildDepError "streaming-with"))
          (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."timerep" or ((hsPkgs.pkgs-errors).buildDepError "timerep"))
          (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
          (hsPkgs."uri-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "uri-bytestring"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
          ];
        buildable = true;
        };
      exes = {
        "imm" = {
          depends = [
            (hsPkgs."imm" or ((hsPkgs.pkgs-errors).buildDepError "imm"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }