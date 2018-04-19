{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      bytestring-in-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "llvm";
          version = "0.6.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>, Lennart Augustsson <lennart@augustsson.net>";
        author = "Bryan O'Sullivan, Lennart Augustsson";
        homepage = "http://darcs.serpentine.com/llvm/";
        url = "";
        synopsis = "Bindings to the LLVM compiler toolkit";
        description = "Bindings to the LLVM compiler toolkit";
        buildType = "Custom";
      };
      components = {
        llvm = {
          depends  = if _flags.bytestring-in-base
            then [
              hsPkgs.base
              hsPkgs.type-level
            ]
            else [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.type-level
            ];
        };
      };
    }