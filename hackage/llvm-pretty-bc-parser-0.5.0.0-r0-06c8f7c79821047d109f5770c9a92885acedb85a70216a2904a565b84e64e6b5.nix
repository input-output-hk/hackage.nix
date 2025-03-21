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
    flags = { fuzz = false; regressions = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "llvm-pretty-bc-parser"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ryan Scott <rscott@galois.com>\n, Kevin Quick <kquick@galois.com>\n, Langston Barrett <langston@galois.com>";
      author = "Trevor Elliott <trevor@galois.com>";
      homepage = "";
      url = "";
      synopsis = "LLVM bitcode parsing library";
      description = "A parser for the LLVM bitcode file format, yielding a Module from the\nllvm-pretty package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."llvm-pretty" or (errorHandler.buildDepError "llvm-pretty"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ];
        buildable = true;
      };
      exes = {
        "llvm-disasm" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."fgl-visualize" or (errorHandler.buildDepError "fgl-visualize"))
            (hsPkgs."llvm-pretty-bc-parser" or (errorHandler.buildDepError "llvm-pretty-bc-parser"))
            (hsPkgs."llvm-pretty" or (errorHandler.buildDepError "llvm-pretty"))
            (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          ];
          buildable = true;
        };
        "regression-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."llvm-pretty" or (errorHandler.buildDepError "llvm-pretty"))
            (hsPkgs."llvm-pretty-bc-parser" or (errorHandler.buildDepError "llvm-pretty-bc-parser"))
          ];
          buildable = if flags.regressions then true else false;
        };
        "fuzz-llvm-disasm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."llvm-pretty" or (errorHandler.buildDepError "llvm-pretty"))
            (hsPkgs."llvm-pretty-bc-parser" or (errorHandler.buildDepError "llvm-pretty-bc-parser"))
          ];
          buildable = if flags.fuzz then true else false;
        };
      };
      tests = {
        "unit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."llvm-pretty" or (errorHandler.buildDepError "llvm-pretty"))
            (hsPkgs."llvm-pretty-bc-parser" or (errorHandler.buildDepError "llvm-pretty-bc-parser"))
          ];
          buildable = true;
        };
        "disasm-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-sugar" or (errorHandler.buildDepError "tasty-sugar"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
            (hsPkgs."llvm-pretty" or (errorHandler.buildDepError "llvm-pretty"))
            (hsPkgs."llvm-pretty-bc-parser" or (errorHandler.buildDepError "llvm-pretty-bc-parser"))
          ];
          buildable = true;
        };
      };
    };
  }