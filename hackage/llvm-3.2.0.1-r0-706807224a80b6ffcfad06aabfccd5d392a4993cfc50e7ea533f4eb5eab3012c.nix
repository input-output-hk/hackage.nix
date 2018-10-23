{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "llvm";
        version = "3.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>,\nLennart Augustsson <lennart@augustsson.net>";
      author = "Bryan O'Sullivan, Lennart Augustsson";
      homepage = "https://github.com/bos/llvm";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit.";
      description = "High-level bindings to the LLVM compiler toolkit.\n\n* New in 3.2.0.0: Builds against LLVM 3.2\n\n* New in 3.0.0.0: The low-level bindings have been split into the\nllvm-base package.\n\n* New in 0.9.1.1: Builds against LLVM 2.9.\n\n* New in 0.9.1.0: Util.Memory for memory related intrinsics.\n\n* New in 0.9.0.0: Adapted to LLVM 2.8 (removed support for Union types).";
      buildType = "Simple";
    };
    components = {
      "llvm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.llvm-base)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.type-level)
          (hsPkgs.containers)
        ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."vecLib");
      };
    };
  }