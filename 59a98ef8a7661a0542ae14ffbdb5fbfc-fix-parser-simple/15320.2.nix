{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "fix-parser-simple";
          version = "15320.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "strake888@gmail.com";
        author = "Matthew Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Simple fix-expression parser";
        description = "Simple fix-expression parser";
        buildType = "Simple";
      };
      components = {
        fix-parser-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.mmtl
          ];
        };
      };
    }