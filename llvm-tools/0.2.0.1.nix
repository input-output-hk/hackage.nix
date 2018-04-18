{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "llvm-tools";
          version = "0.2.0.1";
        };
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
        llvm-tools = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.filemanip
            hsPkgs.llvm-analysis
            hsPkgs.llvm-data-interop
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.xml
            hsPkgs.graphviz
            hsPkgs.parallel-io
            hsPkgs.blaze-markup
          ];
        };
        exes = {
          DumpLLVMModule = {
            depends  = [
              hsPkgs.base
              hsPkgs.llvm-data-interop
            ];
          };
          FindValue = {
            depends  = [
              hsPkgs.base
              hsPkgs.llvm-analysis
              hsPkgs.llvm-data-interop
              hsPkgs.unordered-containers
            ];
          };
          ViewIRGraph = {
            depends  = [
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.llvm-analysis
              hsPkgs.llvm-tools
              hsPkgs.containers
              hsPkgs.graphviz
            ];
          };
          TypeUnificationCheck = {
            depends  = [
              hsPkgs.base
              hsPkgs.llvm-analysis
              hsPkgs.llvm-data-interop
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.process-conduit
              hsPkgs.attoparsec-conduit
              hsPkgs.conduit
            ];
          };
        };
      };
    }