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
        name = "bindings-directfb";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-directfb";
      url = "";
      synopsis = "Low level bindings to DirectFB";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bindings-directfb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-common)
          (hsPkgs.bindings-posix)
        ];
        pkgconfig = [
          (pkgconfPkgs.directfb)
        ];
      };
    };
  }