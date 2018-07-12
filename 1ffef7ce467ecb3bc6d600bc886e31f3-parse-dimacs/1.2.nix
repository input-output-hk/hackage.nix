{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "parse-dimacs";
          version = "1.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Denis Bueno <dbueno@gmail.com>";
        author = "Denis Bueno";
        homepage = "";
        url = "";
        synopsis = "DIMACS CNF parser library";
        description = "A DIMACS CNF parser library, implemented with Parsec 3, using ByteStrings.\nDIMACS CNF is a file format for describing constraint problems in\nconjunctive normal form.";
        buildType = "Simple";
      };
      components = {
        "parse-dimacs" = {
          depends  = [
            hsPkgs.parsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.array
          ];
        };
      };
    }