{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "XML";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 M Farkas-Dyck";
        maintainer = "strake888@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Extensible Markup Language";
        description = "";
        buildType = "Simple";
      };
      components = {
        XML = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.util
            hsPkgs.txt
            hsPkgs.vector
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-smallcheck
              hsPkgs.XML
            ];
          };
        };
      };
    }