{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xml-helpers";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Wick <awick@uhusre.com>";
        author = "Adam Wick <awick@uhsure.com>";
        homepage = "http://github.com/acw/xml-helpers";
        url = "";
        synopsis = "Some useful helper functions for the xml library.";
        description = "Included are some folds and maps I've found useful in parsing XML data.";
        buildType = "Simple";
      };
      components = {
        xml-helpers = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
          ];
        };
      };
    }