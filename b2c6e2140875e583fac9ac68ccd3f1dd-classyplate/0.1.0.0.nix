{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "classyplate";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nboldi@elte.hu";
        author = "Nemeth Boldizsar";
        homepage = "";
        url = "";
        synopsis = "Fuseable type-class based generics";
        description = "";
        buildType = "Simple";
      };
      components = {
        classyplate = {
          depends  = [
            hsPkgs.base
            hsPkgs.type-list
            hsPkgs.template-haskell
          ];
        };
      };
    }