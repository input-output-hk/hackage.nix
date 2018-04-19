{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "xsd";
          version = "0.3.7";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Tony Morris, 2013 Stefan Wehr";
        maintainer = "Stefan Wehr <wehr@factisresearch.com>";
        author = "Tony Morris";
        homepage = "https://github.com/skogsbaer/xsd";
        url = "";
        synopsis = "XML Schema data structures";
        description = "XML Schema data structures (XSD)";
        buildType = "Simple";
      };
      components = {
        xsd = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.time
          ];
        };
      };
    }