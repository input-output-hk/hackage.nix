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
      identifier = { name = "hie-bios"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matthew Pickering <matthewtpickering@gmail.com>";
      author = "Matthew Pickering <matthewtpickering@gmail.com>";
      homepage = "https://github.com/mpickering/hie-bios";
      url = "";
      synopsis = "Set up a GHC API session";
      description = "Set up a GHC API session and obtain flags required to compile a source file";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptohash-sha1" or (buildDepError "cryptohash-sha1"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          ];
        buildable = true;
        };
      exes = {
        "hie-bios" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."hie-bios" or (buildDepError "hie-bios"))
            ];
          buildable = true;
          };
        };
      tests = {
        "parser-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."hie-bios" or (buildDepError "hie-bios"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = true;
          };
        "bios-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."hie-bios" or (buildDepError "hie-bios"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            ];
          buildable = true;
          };
        };
      };
    }