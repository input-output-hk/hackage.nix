{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "dson-parsec";
          version = "0.4.1.1";
        };
        license = "MIT";
        copyright = "(c) Ezequiel Alvarez 2014";
        maintainer = "welcometothechango@gmail.com";
        author = "Ezequiel Alvarez";
        homepage = "https://github.com/alvare/dson-parsec";
        url = "";
        synopsis = "DSON parser.";
        description = "A parser for DSON strings built with parsec3.";
        buildType = "Simple";
      };
      components = {
        dson-parsec = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }