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
      specVersion = "2.2";
      identifier = { name = "imm"; version = "1.8.0.0"; };
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
          (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
          (hsPkgs."relude" or (buildDepError "relude"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."atom-conduit" or (buildDepError "atom-conduit"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."dhall" or (buildDepError "dhall"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."msgpack" or (buildDepError "msgpack"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."monad-time" or (buildDepError "monad-time"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."refined" or (buildDepError "refined"))
          (hsPkgs."rss-conduit" or (buildDepError "rss-conduit"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."timerep" or (buildDepError "timerep"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."uri-bytestring" or (buildDepError "uri-bytestring"))
          (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or (buildDepError "xml-types"))
          ];
        buildable = true;
        };
      exes = {
        "imm" = {
          depends = [
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."imm" or (buildDepError "imm"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."atom-conduit" or (buildDepError "atom-conduit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."msgpack" or (buildDepError "msgpack"))
            (hsPkgs."opml-conduit" or (buildDepError "opml-conduit"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter-ansi-terminal" or (buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."refined" or (buildDepError "refined"))
            (hsPkgs."rss-conduit" or (buildDepError "rss-conduit"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
            (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-with" or (buildDepError "streaming-with"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."uri-bytestring" or (buildDepError "uri-bytestring"))
            (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
            (hsPkgs."xml-types" or (buildDepError "xml-types"))
            ];
          buildable = true;
          };
        "imm-writefile" = {
          depends = [
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."imm" or (buildDepError "imm"))
            (hsPkgs."atom-conduit" or (buildDepError "atom-conduit"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."msgpack" or (buildDepError "msgpack"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."rss-conduit" or (buildDepError "rss-conduit"))
            (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-with" or (buildDepError "streaming-with"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."uri-bytestring" or (buildDepError "uri-bytestring"))
            ];
          buildable = true;
          };
        "imm-sendmail" = {
          depends = [
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."imm" or (buildDepError "imm"))
            (hsPkgs."atom-conduit" or (buildDepError "atom-conduit"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."msgpack" or (buildDepError "msgpack"))
            (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."refined" or (buildDepError "refined"))
            (hsPkgs."rss-conduit" or (buildDepError "rss-conduit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."uri-bytestring" or (buildDepError "uri-bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }