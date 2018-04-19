{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hsyscall";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "aycan.irican@core.gen.tr";
        author = "Aycan iRiCAN";
        homepage = "http://sites.google.com/site/iricanaycan/hsyscall";
        url = "";
        synopsis = "FFI to syscalls";
        description = "FFI to OS syscalls (open, close, sendfile etc...).";
        buildType = "Simple";
      };
      components = {
        hsyscall = {
          depends  = [ hsPkgs.base ];
        };
      };
    }