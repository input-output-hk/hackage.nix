{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debugandersenconstraints = false;
      debugandersengraph = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "llvm-analysis";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "travitch@cs.wisc.edu";
        author = "Tristan Ravitch";
        homepage = "";
        url = "";
        synopsis = "A Haskell library for analyzing LLVM bitcode";
        description = "A Haskell library for analyzing LLVM bitcode.  To convert\nbitcode to the format used by this library, see the\nllvm-data-interop package.\n\nThis library attempts to provide some basic program analysis\ninfrastructure and aims to scale to large bitcode files.\n\nThere are some useful tools built on top of this library\navailable in the llvm-tools package.\n\nChanges since 0.2.0:\n* LLVM 3.3 support (contributed by Patrick Hulin)\n* Metadata format change.  Metadata type entries no longer have\na MetaDWFile.  Instead, file and directory names are stored\ndirectly in each MetaDW*Type.  This change lets us more easily\naccommodate changes in LLVM 3.3 (while supporting older versions).\n* Under LLVM 3.3, the 'metaCompileUnitIsMain' field of MetaDWCompileUnit\nis always False.  This disappeared in LLVM 3.3, but removing it would\nbe an unnecessary API break, I think.";
        buildType = "Simple";
      };
      components = {
        llvm-analysis = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.transformers
            hsPkgs.filemanip
            hsPkgs.monad-par
            hsPkgs.graphviz
            hsPkgs.temporary
            hsPkgs.lens
            hsPkgs.hashable
            hsPkgs.failure
            hsPkgs.lens
            hsPkgs.GenericPretty
            hsPkgs.hoopl
            hsPkgs.llvm-base-types
            hsPkgs.fgl
            hsPkgs.text
            hsPkgs.boomerang
            hsPkgs.ifscs
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.unordered-containers
            hsPkgs.HUnit
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.itanium-abi
            hsPkgs.uniplate
          ];
        };
        tests = {
          CallGraphTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.llvm-analysis
              hsPkgs.llvm-data-interop
            ];
          };
          BlockReturnTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.filepath
              hsPkgs.llvm-analysis
              hsPkgs.llvm-data-interop
            ];
          };
          ReturnTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.unordered-containers
              hsPkgs.llvm-data-interop
              hsPkgs.llvm-analysis
            ];
          };
          AccessPathTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.llvm-data-interop
              hsPkgs.llvm-analysis
            ];
          };
          ClassHierarchyTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.uniplate
              hsPkgs.llvm-analysis
              hsPkgs.llvm-data-interop
              hsPkgs.itanium-abi
            ];
          };
          AndersenTests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.llvm-data-interop
              hsPkgs.llvm-analysis
            ] ++ pkgs.lib.optional _flags.debugandersengraph hsPkgs.graphviz;
          };
        };
      };
    }