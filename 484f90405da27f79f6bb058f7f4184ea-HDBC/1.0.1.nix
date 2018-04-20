{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "HDBC";
          version = "1.0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2005-2006 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "";
        description = "";
        buildType = "Custom";
      };
      components = {
        HDBC = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }