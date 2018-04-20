{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "keera-hails-reactive-yampa";
          version = "0.0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.co.uk";
        author = "Ivan Perez";
        homepage = "http://www.keera.es/blog/community/";
        url = "";
        synopsis = "Haskell on Rails - FRP Yampa Signal Functions as RVs";
        description = "Yampa-driven Functional Reactive Signal Functions,\nas reactive values.";
        buildType = "Simple";
      };
      components = {
        keera-hails-reactive-yampa = {
          depends  = [
            hsPkgs.base
            hsPkgs.keera-hails-reactivevalues
            hsPkgs.keera-callbacks
            hsPkgs.time
            hsPkgs.Yampa
          ];
        };
      };
    }