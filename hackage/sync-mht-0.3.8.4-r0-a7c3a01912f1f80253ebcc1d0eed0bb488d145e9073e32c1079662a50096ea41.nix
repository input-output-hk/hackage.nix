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
      specVersion = "1.18";
      identifier = { name = "sync-mht"; version = "0.3.8.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Emin Karayel <me@eminkarayel.de>";
      author = "Emin Karayel <me@eminkarayel.de>";
      homepage = "https://github.com/ekarayel/sync-mht";
      url = "https://github.com/ekarayel/sync-mht";
      synopsis = "Fast incremental file transfer using Merkle-Hash-Trees";
      description = "A command line tool that can be used to incrementally synchronize a directory hierarchy with a\nsecond one. It is using a Merkle-Hash-Tree to compare the folders, such that the synchronization\ntime and communication (round) complexity grows only logarithmically with the size of the\ndirectories (assuming the actual difference of the directories is small).\n\nThe communication happens through standard streams between parent and child processes, which can\neasily be routed through remote command execution tools.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."byteable" or (buildDepError "byteable"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytes" or (buildDepError "bytes"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          ];
        };
      exes = {
        "sync-mht" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."byteable" or (buildDepError "byteable"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytes" or (buildDepError "bytes"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            ];
          };
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."byteable" or (buildDepError "byteable"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytes" or (buildDepError "bytes"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            ];
          };
        };
      };
    }