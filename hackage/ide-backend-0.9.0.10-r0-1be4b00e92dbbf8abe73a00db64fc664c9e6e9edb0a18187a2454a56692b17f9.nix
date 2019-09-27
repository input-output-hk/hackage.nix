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
      identifier = { name = "ide-backend"; version = "0.9.0.10"; };
      license = "MIT";
      copyright = "(c) 2015 FP Complete";
      maintainer = "Duncan Coutts <duncan@well-typed.com>";
      author = "Duncan Coutts, Mikolaj Konarski, Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "An IDE backend library";
      description = "See README.md for more details";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."data-accessor-mtl" or (buildDepError "data-accessor-mtl"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."ide-backend-common" or (buildDepError "ide-backend-common"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."Cabal-ide-backend" or (buildDepError "Cabal-ide-backend"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          ];
        buildable = true;
        };
      exes = {
        "ide-backend-exe-cabal" = {
          depends = [
            (hsPkgs."ide-backend" or (buildDepError "ide-backend"))
            (hsPkgs."ide-backend-common" or (buildDepError "ide-backend-common"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."executable-path" or (buildDepError "executable-path"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."bytestring-trie" or (buildDepError "bytestring-trie"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."fingertree" or (buildDepError "fingertree"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."data-accessor-mtl" or (buildDepError "data-accessor-mtl"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."Cabal-ide-backend" or (buildDepError "Cabal-ide-backend"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ];
          buildable = true;
          };
        };
      tests = {
        "TestSuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ide-backend" or (buildDepError "ide-backend"))
            (hsPkgs."ide-backend-common" or (buildDepError "ide-backend-common"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."Cabal-ide-backend" or (buildDepError "Cabal-ide-backend"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "rpc-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."executable-path" or (buildDepError "executable-path"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."ide-backend-common" or (buildDepError "ide-backend-common"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }