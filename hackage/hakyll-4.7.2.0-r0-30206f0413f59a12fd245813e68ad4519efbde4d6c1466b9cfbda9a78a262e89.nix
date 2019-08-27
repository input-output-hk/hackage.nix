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
    flags = { previewserver = true; watchserver = true; checkexternal = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hakyll"; version = "4.7.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://jaspervdj.be/hakyll";
      url = "";
      synopsis = "A static website compiler library";
      description = "Hakyll is a static website compiler library. It provides you with the tools to\ncreate a simple or advanced static website using a Haskell DSL and formats\nsuch as markdown or RST. You can find more information, including a tutorial,\non the website:\n\n* <http://jaspervdj.be/hakyll>\n\nIf you seek assistance, there's:\n\n* A google group: <http://groups.google.com/group/hakyll>\n\n* An IRC channel, @#hakyll@ on freenode\n\nAdditionally, there's the Haddock documentation in the different modules,\nmeant as a reference.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."lrucache" or (buildDepError "lrucache"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."pandoc" or (buildDepError "pandoc"))
          (hsPkgs."pandoc-citeproc" or (buildDepError "pandoc-citeproc"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          ] ++ (pkgs.lib).optionals (flags.previewserver) [
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."snap-server" or (buildDepError "snap-server"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          ]) ++ (pkgs.lib).optionals (flags.watchserver) [
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          ]) ++ (pkgs.lib).optionals (flags.checkexternal) [
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          ];
        };
      exes = {
        "hakyll-init" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        };
      tests = {
        "hakyll-tests" = {
          depends = (([
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."lrucache" or (buildDepError "lrucache"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."pandoc-citeproc" or (buildDepError "pandoc-citeproc"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            ] ++ (pkgs.lib).optionals (flags.previewserver) [
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            ]) ++ (pkgs.lib).optionals (flags.watchserver) [
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            ]) ++ (pkgs.lib).optionals (flags.checkexternal) [
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            ];
          };
        };
      };
    }