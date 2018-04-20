{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      use_mtl = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "fix-parser-simple";
          version = "15320.3";
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
          ] ++ (if _flags.use_mtl
            then [ hsPkgs.mtl ]
            else [ hsPkgs.mmtl ]);
        };
      };
    }