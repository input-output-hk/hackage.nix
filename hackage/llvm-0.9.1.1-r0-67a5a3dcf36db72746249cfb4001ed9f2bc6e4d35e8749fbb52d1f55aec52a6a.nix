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
        name = "llvm";
        version = "0.9.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>, Lennart Augustsson <lennart@augustsson.net>";
      author = "Bryan O'Sullivan, Lennart Augustsson";
      homepage = "http://code.haskell.org/llvm/";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit.";
      description = "Bindings to the LLVM compiler toolkit.\n\n* New in 0.9.1.1: Builds against LLVM 2.9.\n\n* New in 0.9.1.0: Util.Memory for memory related intrinsics\n\n* New in 0.9.0.0: Adapted to LLVM 2.8 (removed support for Union types);\n\n* New in 0.8.2.0: Support for GHC calling convention.\n\n* New in 0.8.1.0: Numerous small changes.\n\n* New in 0.8.0.0: Adapted to LLVM 2.7;\n\n* New in 0.7.1.0: More attributes\n\n* New in 0.7.0.1: MacOS fixes.\n\n* New in 0.7.0.0: Adapted to LLVM 2.6;";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.type-level)
        ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."vecLib");
      };
    };
  }