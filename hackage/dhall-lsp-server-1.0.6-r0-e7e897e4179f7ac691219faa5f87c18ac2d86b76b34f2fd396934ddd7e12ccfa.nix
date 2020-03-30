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
      specVersion = "1.12";
      identifier = { name = "dhall-lsp-server"; version = "1.0.6"; };
      license = "MIT";
      copyright = "2019 panaeon";
      maintainer = "Gabriel Gonzalez";
      author = "panaeon";
      homepage = "https://github.com/dhall-lang/dhall-haskell/dhall-lsp-server#readme";
      url = "";
      synopsis = "Language Server Protocol (LSP) server for Dhall";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."dhall" or (buildDepError "dhall"))
          (hsPkgs."dhall-json" or (buildDepError "dhall-json"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."haskell-lsp" or (buildDepError "haskell-lsp"))
          (hsPkgs."rope-utf16-splay" or (buildDepError "rope-utf16-splay"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-family-core" or (buildDepError "lens-family-core"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."uri-encode" or (buildDepError "uri-encode"))
          ];
        buildable = if compiler.isEta && true then false else true;
        };
      exes = {
        "dhall-lsp-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dhall-lsp-server" or (buildDepError "dhall-lsp-server"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          buildable = if compiler.isEta && true then false else true;
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = if compiler.isGhc && (compiler.version).lt "8.0"
            then false
            else true;
          };
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-lsp-types" or (buildDepError "haskell-lsp-types"))
            (hsPkgs."lsp-test" or (buildDepError "lsp-test"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }