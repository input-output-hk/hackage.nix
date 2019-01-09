{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = { name = "llvm-pretty-bc-parser"; version = "0.1.3.1"; };
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
          depends = [
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
        };
      tests = {
        "disasm-test" = {
          depends = [
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