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
        name = "bindings-libffi";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-libffi";
      url = "";
      synopsis = "Low level bindings to libffi.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bindings-libffi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-common)
        ];
        pkgconfig = [
          (pkgconfPkgs.libffi)
        ];
      };
    };
  }