{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "di-handle";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Renzo Carbonara 2017-2018";
        maintainer = "renλren.zone";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/di";
        url = "";
        synopsis = "IO support for file handles in di-core";
        description = "IO support for file handles in di-core";
        buildType = "Simple";
      };
      components = {
        "di-handle" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.di-core
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }