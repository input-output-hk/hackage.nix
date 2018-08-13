{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "keera-hails-mvc-controller";
        version = "0.0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "http://www.keera.es/blog/community/";
      url = "";
      synopsis = "Haskell on Gtk rails - Gtk-based controller for MVC applications";
      description = "";
      buildType = "Simple";
    };
    components = {
      "keera-hails-mvc-controller" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }