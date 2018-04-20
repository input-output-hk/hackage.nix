{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-libcddb";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
        author = "Maurício C. Antunes";
        homepage = "http://bitbucket.org/mauricio/bindings-libcddb";
        url = "";
        synopsis = "Low level binding to libcddb.";
        description = "";
        buildType = "Simple";
      };
      components = {
        bindings-libcddb = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-common
          ];
          pkgconfig = [
            pkgconfPkgs.libcddb
          ];
        };
      };
    }