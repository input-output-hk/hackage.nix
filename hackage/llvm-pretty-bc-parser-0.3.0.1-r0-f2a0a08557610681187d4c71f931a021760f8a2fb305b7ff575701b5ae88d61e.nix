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
    flags = { fuzz = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "llvm-pretty-bc-parser"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor Elliott";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."llvm-pretty" or (errorHandler.buildDepError "llvm-pretty"))
          ];
        buildable = true;
        };
      exes = {
        "llvm-disasm" = {
          depends = [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."fgl-visualize" or (errorHandler.buildDepError "fgl-visualize"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."llvm-pretty" or (errorHandler.buildDepError "llvm-pretty"))
            (hsPkgs."llvm-pretty-bc-parser" or (errorHandler.buildDepError "llvm-pretty-bc-parser"))
            ];
          buildable = true;
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
            (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."llvm-pretty" or (errorHandler.buildDepError "llvm-pretty"))
            (hsPkgs."llvm-pretty-bc-parser" or (errorHandler.buildDepError "llvm-pretty-bc-parser"))
            ];
          buildable = if flags.fuzz then true else false;
          };
        };
      tests = {
        "disasm-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."llvm-pretty" or (errorHandler.buildDepError "llvm-pretty"))
            (hsPkgs."llvm-pretty-bc-parser" or (errorHandler.buildDepError "llvm-pretty-bc-parser"))
            ];
          buildable = true;
          };
        };
      };
    }