{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "llvm-tools"; version = "0.2.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
          (hsPkgs."llvm-analysis" or ((hsPkgs.pkgs-errors).buildDepError "llvm-analysis"))
          (hsPkgs."llvm-data-interop" or ((hsPkgs.pkgs-errors).buildDepError "llvm-data-interop"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."parallel-io" or ((hsPkgs.pkgs-errors).buildDepError "parallel-io"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          ];
        buildable = true;
        };
      exes = {
        "DumpLLVMModule" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."llvm-data-interop" or ((hsPkgs.pkgs-errors).buildDepError "llvm-data-interop"))
            ];
          buildable = true;
          };
        "FindValue" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."llvm-analysis" or ((hsPkgs.pkgs-errors).buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or ((hsPkgs.pkgs-errors).buildDepError "llvm-data-interop"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "ViewIRGraph" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."llvm-analysis" or ((hsPkgs.pkgs-errors).buildDepError "llvm-analysis"))
            (hsPkgs."llvm-tools" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tools"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
            ];
          buildable = true;
          };
        "TypeUnificationCheck" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."llvm-analysis" or ((hsPkgs.pkgs-errors).buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or ((hsPkgs.pkgs-errors).buildDepError "llvm-data-interop"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."process-conduit" or ((hsPkgs.pkgs-errors).buildDepError "process-conduit"))
            (hsPkgs."attoparsec-conduit" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-conduit"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            ];
          buildable = true;
          };
        };
      };
    }