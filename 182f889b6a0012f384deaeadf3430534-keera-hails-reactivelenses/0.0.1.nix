{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "keera-hails-reactivelenses";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.es";
        author = "Ivan Perez";
        homepage = "http://www.keera.es/blog/community/";
        url = "";
        synopsis = "Reactive Haskell on Rails - Lenses applied to Reactive Values";
        description = "";
        buildType = "Simple";
      };
      components = {
        keera-hails-reactivelenses = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.keera-hails-reactivevalues
          ];
        };
      };
    }