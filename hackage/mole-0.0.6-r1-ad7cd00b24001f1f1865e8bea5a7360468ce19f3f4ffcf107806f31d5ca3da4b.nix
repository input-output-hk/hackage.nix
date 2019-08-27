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
      specVersion = "1.10";
      identifier = { name = "mole"; version = "0.0.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "tomas.carnecky@gmail.com";
      author = "Tomas Carnecky";
      homepage = "";
      url = "";
      synopsis = "A glorified string replacement tool";
      description = "A glorified string replacement tool. For a very specific purpose. That\npurpose being to compile and optimize a static website (or a single-page\napplication). Mole inspects source, builds a complete dependency tree,\nminifies and compresses the files, adds fingerprints and writes the result\nto a directory.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mole" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."kraken" or (buildDepError "kraken"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."css-syntax" or (buildDepError "css-syntax"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."hspec-smallcheck" or (buildDepError "hspec-smallcheck"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."kraken" or (buildDepError "kraken"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }