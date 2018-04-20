{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Pathfinder";
          version = "0.5.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "giorgidze@gmail.com";
        author = "George Giorgidze and Nils Schweinsberg";
        homepage = "";
        url = "";
        synopsis = "Relational optimiser and code generator";
        description = "The library provides FFI bindings to the Pathfinder relational optimiser and\ncode generator. Specifically, the library allows for\n\n* optimisation of table algebra (a variant of relational algebra) expressions\n\n* and compilation of table algebra expressions into SQL:1999 queries\n\nNote that the C source bundle of Pathfinder is also included in this\npackage. The C sources are automatically built along with the Haskell FFI\nbindings. There is no need to download and install Pathfinder separately.\n\nMore information about Pathfinder is available from the following web page:\n\n* <http://www-db.informatik.uni-tuebingen.de/research/pathfinder>";
        buildType = "Custom";
      };
      components = {
        Pathfinder = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
          ];
          libs = [ pkgs.xml2 ];
        };
      };
    }