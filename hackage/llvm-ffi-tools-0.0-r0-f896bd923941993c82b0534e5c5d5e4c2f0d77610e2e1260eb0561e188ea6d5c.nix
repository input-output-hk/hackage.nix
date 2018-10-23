{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "llvm-ffi-tools";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <llvm@henning-thielemann.de>";
      author = "Henning Thielemann, Bryan O'Sullivan, Lennart Augustsson";
      homepage = "http://haskell.org/haskellwiki/LLVM";
      url = "";
      synopsis = "Tools for maintaining the llvm-ffi package";
      description = "The package contains tools for maintaining the FFI interface to LLVM\nin the @llvm-ffi@ package\n<http://hackage.haskell.org/package/llvm-ffi>.\nMost notably there is the @llvm-function-mangler@\nthat converts LLVM-C bindings to Haskell foreign imports.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "llvm-diff-ffi" = {
          depends  = [
            (hsPkgs.utility-ht)
            (hsPkgs.regex-posix)
            (hsPkgs.containers)
            (hsPkgs.base)
          ];
        };
        "llvm-function-mangler" = {
          depends  = [
            (hsPkgs.utility-ht)
            (hsPkgs.regex-posix)
            (hsPkgs.containers)
            (hsPkgs.base)
          ];
        };
        "llvm-intrinsic-mangler" = {
          depends  = [
            (hsPkgs.bytestring)
            (hsPkgs.regex-posix)
            (hsPkgs.base)
          ];
        };
      };
    };
  }