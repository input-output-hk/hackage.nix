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
      specVersion = "1.8";
      identifier = { name = "imm"; version = "1.0.0.0"; };
      license = "LicenseRef-OtherLicense";
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
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."atom-conduit" or (buildDepError "atom-conduit"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."chunked-data" or (buildDepError "chunked-data"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."compdata" or (buildDepError "compdata"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
          (hsPkgs."conduit-parse" or (buildDepError "conduit-parse"))
          (hsPkgs."connection" or (buildDepError "connection"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."dyre" or (buildDepError "dyre"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."HaskellNet" or (buildDepError "HaskellNet"))
          (hsPkgs."HaskellNet-SSL" or (buildDepError "HaskellNet-SSL"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
          (hsPkgs."monoid-subclasses" or (buildDepError "monoid-subclasses"))
          (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."opml-conduit" or (buildDepError "opml-conduit"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."rainbow" or (buildDepError "rainbow"))
          (hsPkgs."rainbox" or (buildDepError "rainbox"))
          (hsPkgs."rss-conduit" or (buildDepError "rss-conduit"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."timerep" or (buildDepError "timerep"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."uri-bytestring" or (buildDepError "uri-bytestring"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          ];
        };
      exes = {
        "imm" = {
          depends = [
            (hsPkgs."imm" or (buildDepError "imm"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."free" or (buildDepError "free"))
            ];
          };
        };
      };
    }