{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "directory";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "library for directory handling";
        description = "This package provides a library for handling directories.";
        buildType = "Configure";
      };
      components = {
        directory = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.filepath
          ];
        };
      };
    }