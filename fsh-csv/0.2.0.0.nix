{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fsh-csv";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "iostreamer007@gmail.com";
        author = "iostreamer-X";
        homepage = "";
        url = "";
        synopsis = "csv parser for fsh";
        description = "This is a csv parser for fsh. To use this parser, use the -p flag and pass 'csv' as argument";
        buildType = "Simple";
      };
      components = {
        fsh-csv = {
          depends  = [
            hsPkgs.base
            hsPkgs.hint
          ];
        };
      };
    }