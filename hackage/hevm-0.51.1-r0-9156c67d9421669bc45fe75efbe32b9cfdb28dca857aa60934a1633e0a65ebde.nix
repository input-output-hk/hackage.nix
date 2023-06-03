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
    flags = { ci = false; devel = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "hevm"; version = "0.51.1"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "mikael@brockman.se, martin.lundfall@gmail.com, git@d-xo.org";
      author = "Mikael Brockman, Martin Lundfall, dxo";
      homepage = "https://github.com/dapphub/dapptools";
      url = "";
      synopsis = "Ethereum virtual machine evaluator";
      description = "Hevm implements the Ethereum virtual machine semantics.\n.\nIt can be used as a library, and it also comes with an executable\nthat can run unit test suites, optionally with a visual TTY debugger.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."tree-view" or (errorHandler.buildDepError "tree-view"))
          (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."data-dword" or (errorHandler.buildDepError "data-dword"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."optics-extra" or (errorHandler.buildDepError "optics-extra"))
          (hsPkgs."optics-th" or (errorHandler.buildDepError "optics-th"))
          (hsPkgs."aeson-optics" or (errorHandler.buildDepError "aeson-optics"))
          (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
          (hsPkgs."operational" or (errorHandler.buildDepError "operational"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          (hsPkgs."quickcheck-text" or (errorHandler.buildDepError "quickcheck-text"))
          (hsPkgs."restless-git" or (errorHandler.buildDepError "restless-git"))
          (hsPkgs."rosezipper" or (errorHandler.buildDepError "rosezipper"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."here" or (errorHandler.buildDepError "here"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."smt2-parser" or (errorHandler.buildDepError "smt2-parser"))
          (hsPkgs."word-wrap" or (errorHandler.buildDepError "word-wrap"))
          (hsPkgs."spool" or (errorHandler.buildDepError "spool"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."spawn" or (errorHandler.buildDepError "spawn"))
          (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
          ] ++ (pkgs.lib).optionals (!system.isWindows) [
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
        libs = [
          (pkgs."secp256k1" or (errorHandler.sysDepError "secp256k1"))
          (pkgs."ff" or (errorHandler.sysDepError "ff"))
          (pkgs."gmp" or (errorHandler.sysDepError "gmp"))
          ] ++ (pkgs.lib).optional (system.isLinux || system.isWindows) (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"));
        buildable = true;
        };
      sublibs = {
        "test-utils" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."here" or (errorHandler.buildDepError "here"))
            (hsPkgs."hevm" or (errorHandler.buildDepError "hevm"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."data-dword" or (errorHandler.buildDepError "data-dword"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."regex" or (errorHandler.buildDepError "regex"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."spawn" or (errorHandler.buildDepError "spawn"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            (hsPkgs."smt2-parser" or (errorHandler.buildDepError "smt2-parser"))
            (hsPkgs."operational" or (errorHandler.buildDepError "operational"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."optics-extra" or (errorHandler.buildDepError "optics-extra"))
            ];
          libs = [
            (pkgs."secp256k1" or (errorHandler.sysDepError "secp256k1"))
            ];
          buildable = if system.isWindows then false else true;
          };
        };
      exes = {
        "hevm" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."data-dword" or (errorHandler.buildDepError "data-dword"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."hevm" or (errorHandler.buildDepError "hevm"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."operational" or (errorHandler.buildDepError "operational"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-text" or (errorHandler.buildDepError "quickcheck-text"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."spawn" or (errorHandler.buildDepError "spawn"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            ];
          libs = if system.isOsx
            then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
            else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
          buildable = if system.isWindows then false else true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."here" or (errorHandler.buildDepError "here"))
            (hsPkgs."hevm" or (errorHandler.buildDepError "hevm"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."data-dword" or (errorHandler.buildDepError "data-dword"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."regex" or (errorHandler.buildDepError "regex"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."spawn" or (errorHandler.buildDepError "spawn"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            (hsPkgs."smt2-parser" or (errorHandler.buildDepError "smt2-parser"))
            (hsPkgs."operational" or (errorHandler.buildDepError "operational"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."optics-extra" or (errorHandler.buildDepError "optics-extra"))
            (hsPkgs."hevm".components.sublibs.test-utils or (errorHandler.buildDepError "hevm:test-utils"))
            ];
          libs = [
            (pkgs."secp256k1" or (errorHandler.sysDepError "secp256k1"))
            ] ++ (if system.isOsx
            then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
            else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ]);
          buildable = if system.isWindows then false else true;
          };
        "rpc-tests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."here" or (errorHandler.buildDepError "here"))
            (hsPkgs."hevm" or (errorHandler.buildDepError "hevm"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."data-dword" or (errorHandler.buildDepError "data-dword"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."regex" or (errorHandler.buildDepError "regex"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."spawn" or (errorHandler.buildDepError "spawn"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            (hsPkgs."smt2-parser" or (errorHandler.buildDepError "smt2-parser"))
            (hsPkgs."operational" or (errorHandler.buildDepError "operational"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."optics-extra" or (errorHandler.buildDepError "optics-extra"))
            (hsPkgs."hevm".components.sublibs.test-utils or (errorHandler.buildDepError "hevm:test-utils"))
            ];
          libs = [
            (pkgs."secp256k1" or (errorHandler.sysDepError "secp256k1"))
            ] ++ (if system.isOsx
            then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
            else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ]);
          buildable = if system.isWindows then false else true;
          };
        "ethereum-tests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."here" or (errorHandler.buildDepError "here"))
            (hsPkgs."hevm" or (errorHandler.buildDepError "hevm"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."data-dword" or (errorHandler.buildDepError "data-dword"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."regex" or (errorHandler.buildDepError "regex"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."spawn" or (errorHandler.buildDepError "spawn"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            (hsPkgs."smt2-parser" or (errorHandler.buildDepError "smt2-parser"))
            (hsPkgs."operational" or (errorHandler.buildDepError "operational"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."optics-extra" or (errorHandler.buildDepError "optics-extra"))
            (hsPkgs."hevm".components.sublibs.test-utils or (errorHandler.buildDepError "hevm:test-utils"))
            ];
          libs = [
            (pkgs."secp256k1" or (errorHandler.sysDepError "secp256k1"))
            ] ++ (if system.isOsx
            then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
            else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ]);
          buildable = if system.isWindows then false else true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hevm" or (errorHandler.buildDepError "hevm"))
            (hsPkgs."here" or (errorHandler.buildDepError "here"))
            (hsPkgs."hevm".components.sublibs.test-utils or (errorHandler.buildDepError "hevm:test-utils"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          libs = if system.isOsx
            then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
            else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
          buildable = true;
          };
        };
      };
    }