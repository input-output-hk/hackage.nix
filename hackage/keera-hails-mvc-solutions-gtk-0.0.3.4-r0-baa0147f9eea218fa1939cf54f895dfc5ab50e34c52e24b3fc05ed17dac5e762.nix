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
        name = "keera-hails-mvc-solutions-gtk";
        version = "0.0.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "http://www.keera.es/blog/community/";
      url = "";
      synopsis = "Haskell on Gtk rails - Common solutions to recurrent problems in Gtk applications";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.gtk)
          (hsPkgs.hslogger)
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.mtl)
          (hsPkgs.keera-hails-mvc-environment-gtk)
          (hsPkgs.keera-hails-mvc-view)
          (hsPkgs.keera-hails-mvc-view-gtk)
          (hsPkgs.keera-hails-mvc-model-protectedmodel)
          (hsPkgs.keera-hails-reactivevalues)
          (hsPkgs.MissingK)
        ];
      };
    };
  }