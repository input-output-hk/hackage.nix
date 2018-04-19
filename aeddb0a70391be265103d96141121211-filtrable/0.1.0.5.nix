{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "filtrable";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "strake888@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "https://github.com/strake/filtrable.hs";
        url = "";
        synopsis = "Class of filtrable containers";
        description = "";
        buildType = "Simple";
      };
      components = {
        filtrable = {
          depends  = [ hsPkgs.base ];
        };
      };
    }