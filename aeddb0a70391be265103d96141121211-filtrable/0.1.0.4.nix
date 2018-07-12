{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "filtrable";
          version = "0.1.0.4";
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
        "filtrable" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }