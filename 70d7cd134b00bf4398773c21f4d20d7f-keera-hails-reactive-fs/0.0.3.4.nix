{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "keera-hails-reactive-fs";
          version = "0.0.3.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.es";
        author = "Ivan Perez";
        homepage = "http://www.keera.es/blog/community/";
        url = "";
        synopsis = "Haskell on Rails - Files as Reactive Values";
        description = "";
        buildType = "Simple";
      };
      components = {
        keera-hails-reactive-fs = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.fsnotify
            hsPkgs.keera-hails-reactivevalues
            hsPkgs.system-filepath
          ];
        };
      };
    }