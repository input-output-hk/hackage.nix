{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "keera-hails-reactivevalues";
          version = "0.1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.es";
        author = "Ivan Perez";
        homepage = "http://www.keera.es/blog/community/";
        url = "";
        synopsis = "Haskell on Rails - Reactive Values";
        description = "";
        buildType = "Simple";
      };
      components = {
        keera-hails-reactivevalues = {
          depends  = [
            hsPkgs.base
            hsPkgs.contravariant
          ];
        };
      };
    }