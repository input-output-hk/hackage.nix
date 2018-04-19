{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      haste = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "selda-postgresql";
          version = "0.1.2.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "anton@ekblad.cc";
        author = "Anton Ekblad";
        homepage = "https://github.com/valderman/selda";
        url = "";
        synopsis = "PostgreSQL backend for the Selda database EDSL.";
        description = "PostgreSQL backend for the Selda database EDSL.\nRequires the PostgreSQL @libpq@ development libraries to be\ninstalled.";
        buildType = "Simple";
      };
      components = {
        selda-postgresql = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.selda
            hsPkgs.text
          ] ++ pkgs.lib.optionals (!_flags.haste) [
            hsPkgs.bytestring
            hsPkgs.postgresql-libpq
          ];
        };
      };
    }