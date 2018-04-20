{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "txt2rtf";
          version = "1.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) 2005 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Filter to convert plain text files to RTF";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          txt2rtf = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }