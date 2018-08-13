{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      fuzz = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "llvm-pretty-bc-parser";
        version = "0.3.2.0";
      };
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
      "llvm-pretty-bc-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.pretty)
          (hsPkgs.monadLib)
          (hsPkgs.fgl)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.llvm-pretty)
        ];
      };
      exes = {
        "llvm-disasm" = {
          depends  = [
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.monadLib)
            (hsPkgs.fgl)
            (hsPkgs.fgl-visualize)
            (hsPkgs.cereal)
            (hsPkgs.llvm-pretty)
            (hsPkgs.llvm-pretty-bc-parser)
          ];
        };
        "fuzz-llvm-disasm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.temporary)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.xml)
            (hsPkgs.time)
            (hsPkgs.deepseq)
            (hsPkgs.abstract-par)
            (hsPkgs.monad-par)
            (hsPkgs.transformers)
            (hsPkgs.llvm-pretty)
            (hsPkgs.llvm-pretty-bc-parser)
          ];
        };
      };
      tests = {
        "disasm-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.llvm-pretty)
            (hsPkgs.llvm-pretty-bc-parser)
          ];
        };
      };
    };
  }