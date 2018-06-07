{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsyscall";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "aycan.irican@core.gen.tr";
        author = "Aycan iRiCAN";
        homepage = "http://github.com/aycanirican/hsyscall";
        url = "";
        synopsis = "FFI to syscalls";
        description = "FFI to OS syscalls (open, close, sendfile etc...).";
        buildType = "Simple";
      };
      components = {
        hsyscall = {
          depends  = [ hsPkgs.base ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }