{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "parse-dimacs";
          version = "1.0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "<dbueno@gmail.com>";
        author = "Denis Bueno";
        homepage = "";
        url = "";
        synopsis = "DIMACS CNF parser library";
        description = "A DIMACS CNF parser library, implemented with Parsec.";
        buildType = "Simple";
      };
      components = {
        parse-dimacs = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }