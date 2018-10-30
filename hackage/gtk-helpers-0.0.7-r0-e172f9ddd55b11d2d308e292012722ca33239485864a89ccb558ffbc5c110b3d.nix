{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "gtk-helpers";
        version = "0.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "http://keera.es/blog/community";
      url = "";
      synopsis = "A collection of auxiliary operations and widgets related to Gtk";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.process)
          (hsPkgs.gtk)
          (hsPkgs.gio)
          (hsPkgs.glib)
          (hsPkgs.mtl)
          (hsPkgs.array)
        ];
      };
    };
  }