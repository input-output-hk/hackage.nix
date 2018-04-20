{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      bytestring-in-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "llvm";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan";
        homepage = "";
        url = "";
        synopsis = "Bindings to the LLVM compiler toolkit";
        description = "Bindings to the LLVM compiler toolkit";
        buildType = "Custom";
      };
      components = {
        llvm = {
          depends  = if _flags.bytestring-in-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.bytestring
            ];
        };
      };
    }