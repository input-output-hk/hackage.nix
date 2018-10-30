{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "x86-64bit";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "https://github.com/divipp/x86-64";
      url = "";
      synopsis = "Runtime code generation for x86 64 bit machine code";
      description = "The primary goal of x86-64bit is to provide a lightweight assembler for machine generated 64 bit x86 assembly instructions.\n\nFeatures:\n\n* The size of operands are statically checked. For example, exchanging @rax@ with @eax@ raises a compile time error rather than a code-generation time error.\n\n* Immediate values are automatically converted to smaller size if possible.\n\n* De Bruijn indices are used instead of named labels\n\n* Quickcheck tests: You can quickcheck your x86 processor!\nPlease report failures, there is a higher chance that the error is this library rather than in your processor.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monads-tf)
          (hsPkgs.vector)
          (hsPkgs.QuickCheck)
        ];
      };
      exes = {
        "x86-64-examples" = {
          depends  = [
            (hsPkgs.x86-64bit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }