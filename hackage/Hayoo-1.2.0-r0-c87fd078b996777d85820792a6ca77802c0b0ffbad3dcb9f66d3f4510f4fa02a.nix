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
    flags = { hayoosnap = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Hayoo"; version = "1.2.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2007 - 2012 Uwe Schmidt, Sebastian M. Schlatt and Timo B. Kranz";
      maintainer = "Timo B. Huebel <tbh@holumbus.org>";
      author = "Sebastian M. Schlatt, Timo B. Huebel, Uwe Schmidt";
      homepage = "http://holumbus.fh-wedel.de";
      url = "";
      synopsis = "The Hayoo! search engine for Haskell API search on hackage";
      description = "The Hayoo! search engine based no the Holumbus framework provides a document indexer\nand a crawler to build indexes over Haddock generated API documentation and packages\nas well as a query interface for these indexes.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hayooIndexer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Holumbus-Searchengine" or (buildDepError "Holumbus-Searchengine"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."enummapset" or (buildDepError "enummapset"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."hxt-cache" or (buildDepError "hxt-cache"))
            (hsPkgs."hxt-charproperties" or (buildDepError "hxt-charproperties"))
            (hsPkgs."hxt-curl" or (buildDepError "hxt-curl"))
            (hsPkgs."hxt-http" or (buildDepError "hxt-http"))
            (hsPkgs."hxt-regex-xmlschema" or (buildDepError "hxt-regex-xmlschema"))
            (hsPkgs."hxt-xpath" or (buildDepError "hxt-xpath"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          };
        "hayooSearch" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Holumbus-Searchengine" or (buildDepError "Holumbus-Searchengine"))
            (hsPkgs."hack" or (buildDepError "hack"))
            (hsPkgs."hack-contrib" or (buildDepError "hack-contrib"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."hxt-unicode" or (buildDepError "hxt-unicode"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."xhtml-combinators" or (buildDepError "xhtml-combinators"))
            ] ++ [
            (hsPkgs."hack-handler-simpleserver" or (buildDepError "hack-handler-simpleserver"))
            ];
          };
        "hayooSnap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Holumbus-Searchengine" or (buildDepError "Holumbus-Searchengine"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."hxt-unicode" or (buildDepError "hxt-unicode"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."MonadCatchIO-transformers" or (buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."snap" or (buildDepError "snap"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."xhtml-combinators" or (buildDepError "xhtml-combinators"))
            ];
          };
        };
      };
    }