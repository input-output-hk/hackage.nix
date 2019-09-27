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
    flags = {
      minimal = false;
      debug = false;
      build-hackage-server = true;
      build-hackage-mirror = true;
      build-hackage-build = true;
      build-hackage-import = false;
      test-create-user = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "hackage-server"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2008-2014 Duncan Coutts,\n2012-2013 Edsko de Vries,\n2013 Google Inc.,\n2010-2011 Matthew Gruen,\n2009-2010 Antoine Latter,\n2008 David Himmelstrup,\n2007 Ross Paterson";
      maintainer = "Duncan Coutts <duncan@community.haskell.org>,\nMatthew Gruen <wikigracenotes@gmail.com>";
      author = "Duncan Coutts <duncan@community.haskell.org>,\nDavid Himmelstrup <lemmih@gmail.com>,\nRoss Paterson <ross@soi.city.ac.uk>,\nMatthew Gruen <wikigracenotes@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "The Hackage web server";
      description = "The new implementation of the Hackage web server, based on the\nHappstack architecture. This is the implementation used to power\n<http://hackage.haskell.org/>\n\nIt is designed to be easy to run your own instance.\nIt also includes a doc builder client and a mirroring client.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hackage-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."rss" or (buildDepError "rss"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
            (hsPkgs."HStringTemplate" or (buildDepError "HStringTemplate"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optionals (!flags.minimal) [
            (hsPkgs."snowball" or (buildDepError "snowball"))
            (hsPkgs."tokenize" or (buildDepError "tokenize"))
            ];
          libs = (pkgs.lib).optional (!system.isOsx) (pkgs."crypt" or (sysDepError "crypt"));
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
            ];
          buildable = if !flags.build-hackage-server then false else true;
          };
        "hackage-mirror" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ];
          buildable = if !flags.build-hackage-mirror then false else true;
          };
        "hackage-build" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."hscolour" or (buildDepError "hscolour"))
            ];
          buildable = if !flags.build-hackage-build then false else true;
          };
        "hackage-import" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = if !flags.build-hackage-import then false else true;
          };
        };
      tests = {
        "HighLevelTest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "CreateUserTest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = if !flags.test-create-user then false else true;
          };
        };
      };
    }