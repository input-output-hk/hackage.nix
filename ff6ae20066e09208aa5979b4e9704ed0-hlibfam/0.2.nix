{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hlibfam";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "aycan.irican@core.gen.tr";
        author = "Aycan iRiCAN";
        homepage = "";
        url = "";
        synopsis = "FFI interface to libFAM";
        description = "FFI interface to libFAM";
        buildType = "Simple";
      };
      components = {
        hlibfam = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.fam ];
        };
      };
    }