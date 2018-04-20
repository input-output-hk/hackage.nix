{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "llvm-base";
          version = "3.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>, Lennart Augustsson <lennart@augustsson.net>";
        author = "Bryan O'Sullivan, Lennart Augustsson";
        homepage = "https://github.com/bos/llvm";
        url = "";
        synopsis = "FFI bindings to the LLVM compiler toolkit.";
        description = "FFI bindings to the LLVM compiler toolkit.\n\nWe try to stay up to date with LLVM releases.  The current version\nof this package is compatible with LLVM 3.0 and 2.9.  Please\nunderstand that the package may or may not work against older LLVM\nreleases; we don't have the time or resources to test across\nmultiple releases.\n\n* New in 3.0: Builds against LLVM 3.0.\n\n* New in 0.9.1.1: Builds against LLVM 2.9.\n\n* New in 0.9.1.0: Util.Memory for memory related intrinsics.\n\n* New in 0.9.0.0: Adapted to LLVM 2.8 (removed support for Union types).";
        buildType = "Custom";
      };
      components = {
        llvm-base = {
          depends  = [ hsPkgs.base ];
        };
      };
    }