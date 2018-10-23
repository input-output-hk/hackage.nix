{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      debug = false;
      testcoverage = false;
    };
    package = {
      specVersion = "1.20";
      identifier = {
        name = "hLLVM";
        version = "0.5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ning Wang <email@ningwang.org>";
      author = "Ning Wang <email@ningwang.org>";
      homepage = "";
      url = "";
      synopsis = "A library for analyzing and transforming LLVM (3.5) assembly codes";
      description = "A pure Haskell library for analyzing and transforming LLVM assembly codes. It includes:\n1) a parser to parse LLVM code in its text form;\n2) an internal IR that is designed for Hoopl and direct composition;\n3) a set of utility functions to convert LLVM AST to and from the internal IR;\n4) a set of utility functions to query the IR.";
      buildType = "Simple";
    };
    components = {
      "hLLVM" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.hooplext)
          (hsPkgs.parsec)
          (hsPkgs.cmdargs)
          (hsPkgs.transformers)
          (hsPkgs.pretty)
          (hsPkgs.data-dword)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "llvm-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.template-haskell)
            (hsPkgs.hooplext)
            (hsPkgs.parsec)
            (hsPkgs.cmdargs)
            (hsPkgs.transformers)
            (hsPkgs.pretty)
            (hsPkgs.data-dword)
          ];
        };
      };
    };
  }