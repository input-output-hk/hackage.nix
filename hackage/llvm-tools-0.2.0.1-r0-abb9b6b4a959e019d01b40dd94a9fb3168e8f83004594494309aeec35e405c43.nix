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
      identifier = { name = "llvm-tools"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "travitch@cs.wisc.edu";
      author = "Tristan Ravitch";
      homepage = "";
      url = "";
      synopsis = "Useful tools built on llvm-analysis";
      description = "This package includes some tools to visualize the LLVM IR.\nCurrent visualizations include static call graphs, CFGs, CDGs,\ndominator trees, and some simple escape graphs.  Output formats\ninclude most graphviz-supported formats, along with an\nHTML-based format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."llvm-analysis" or (errorHandler.buildDepError "llvm-analysis"))
          (hsPkgs."llvm-data-interop" or (errorHandler.buildDepError "llvm-data-interop"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
        ];
        buildable = true;
      };
      exes = {
        "DumpLLVMModule" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."llvm-data-interop" or (errorHandler.buildDepError "llvm-data-interop"))
          ];
          buildable = true;
        };
        "FindValue" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."llvm-analysis" or (errorHandler.buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or (errorHandler.buildDepError "llvm-data-interop"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
        "ViewIRGraph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."llvm-analysis" or (errorHandler.buildDepError "llvm-analysis"))
            (hsPkgs."llvm-tools" or (errorHandler.buildDepError "llvm-tools"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          ];
          buildable = true;
        };
        "TypeUnificationCheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."llvm-analysis" or (errorHandler.buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or (errorHandler.buildDepError "llvm-data-interop"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."process-conduit" or (errorHandler.buildDepError "process-conduit"))
            (hsPkgs."attoparsec-conduit" or (errorHandler.buildDepError "attoparsec-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          ];
          buildable = true;
        };
      };
    };
  }