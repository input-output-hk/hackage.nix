{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      devel = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsqml-datamodel-vinyl";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "marcin.jan.mrotek@gmail.com";
        author = "Marcin Mrotek";
        homepage = "https://github.com/marcinmrotek/hsqml-datamodel-vinyl";
        url = "";
        synopsis = "HsQML DataModel instances for Vinyl Rec.";
        description = "";
        buildType = "Simple";
      };
      components = {
        hsqml-datamodel-vinyl = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsqml-datamodel
            hsPkgs.exceptions
            hsPkgs.show-type
            hsPkgs.template-haskell
            hsPkgs.type-list
            hsPkgs.vinyl
          ];
        };
      };
    }