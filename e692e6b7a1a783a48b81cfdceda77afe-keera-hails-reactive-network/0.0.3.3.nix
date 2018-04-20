{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "keera-hails-reactive-network";
          version = "0.0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.es";
        author = "Ivan Perez";
        homepage = "http://www.keera.es/blog/community/";
        url = "";
        synopsis = "Haskell on Rails - Sockets as Reactive Values";
        description = "";
        buildType = "Simple";
      };
      components = {
        keera-hails-reactive-network = {
          depends  = [
            hsPkgs.base
            hsPkgs.keera-hails-reactivevalues
            hsPkgs.network
          ];
        };
      };
    }