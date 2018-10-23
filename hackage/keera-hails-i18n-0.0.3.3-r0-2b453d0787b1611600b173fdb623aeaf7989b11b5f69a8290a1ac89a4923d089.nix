{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "keera-hails-i18n";
        version = "0.0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "http://www.keera.es/blog/community/";
      url = "";
      synopsis = "Rapid Gtk Application Development - I18N";
      description = "";
      buildType = "Simple";
    };
    components = {
      "keera-hails-i18n" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.glib)
          (hsPkgs.MissingK)
          (hsPkgs.utf8-string)
          (hsPkgs.hgettext)
          (hsPkgs.setlocale)
        ];
      };
    };
  }