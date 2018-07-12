{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "machines-directory";
          version = "0.2.0.2";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "alois.cochard@gmail.com";
        author = "Alois Cochard";
        homepage = "http://github.com/aloiscochard/machines-directory";
        url = "";
        synopsis = "Directory (system) utilities for the machines library";
        description = "";
        buildType = "Simple";
      };
      components = {
        "machines-directory" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.transformers
            hsPkgs.machines
            hsPkgs.machines-io
          ];
        };
      };
    }