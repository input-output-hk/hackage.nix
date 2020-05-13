{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ide-backend"; version = "0.10.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."data-accessor-mtl" or (errorHandler.buildDepError "data-accessor-mtl"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."ide-backend-common" or (errorHandler.buildDepError "ide-backend-common"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."Cabal-ide-backend" or (errorHandler.buildDepError "Cabal-ide-backend"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          ];
        buildable = true;
        };
      exes = {
        "ide-backend-exe-cabal" = {
          depends = [
            (hsPkgs."ide-backend" or (errorHandler.buildDepError "ide-backend"))
            (hsPkgs."ide-backend-common" or (errorHandler.buildDepError "ide-backend-common"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."data-accessor-mtl" or (errorHandler.buildDepError "data-accessor-mtl"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."Cabal-ide-backend" or (errorHandler.buildDepError "Cabal-ide-backend"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            ];
          buildable = true;
          };
        };
      tests = {
        "TestSuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ide-backend" or (errorHandler.buildDepError "ide-backend"))
            (hsPkgs."ide-backend-common" or (errorHandler.buildDepError "ide-backend-common"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."Cabal-ide-backend" or (errorHandler.buildDepError "Cabal-ide-backend"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            ];
          buildable = true;
          };
        "rpc-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."ide-backend" or (errorHandler.buildDepError "ide-backend"))
            (hsPkgs."ide-backend-common" or (errorHandler.buildDepError "ide-backend-common"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }