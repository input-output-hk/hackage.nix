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
        name = "bindings-libusb";
        version = "1.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-libusb";
      url = "";
      synopsis = "Low level bindings to libusb.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bindings-libusb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        pkgconfig = [
          (pkgconfPkgs.libusb-1.0)
        ];
      };
    };
  }