{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hplaylist";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Tim Chevalier <chevalier@alum.wellesley.edu>";
        author = "Tim Chevalier";
        homepage = "";
        url = "";
        synopsis = "Application for managing playlist files on a music player";
        description = "Application for managing playlist files on a music player";
        buildType = "Simple";
      };
      components = {
        exes = {
          hplaylist = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.process
            ];
          };
        };
      };
    }