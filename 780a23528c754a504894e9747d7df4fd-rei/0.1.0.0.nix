{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rei";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "";
        author = "Daniel";
        homepage = "https://github.com/kerkomen/rei";
        url = "";
        synopsis = "Process lists easily";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          rei = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.regex-posix
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.split
            ];
          };
        };
      };
    }