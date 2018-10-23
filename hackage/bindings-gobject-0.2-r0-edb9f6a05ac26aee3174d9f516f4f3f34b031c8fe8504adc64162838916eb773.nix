{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "bindings-gobject";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-gobject";
      url = "";
      synopsis = "Low level bindings to GObject.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bindings-gobject" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.bindings-glib)
        ];
        pkgconfig = [
          (pkgconfPkgs.gobject-2.0)
        ];
      };
    };
  }