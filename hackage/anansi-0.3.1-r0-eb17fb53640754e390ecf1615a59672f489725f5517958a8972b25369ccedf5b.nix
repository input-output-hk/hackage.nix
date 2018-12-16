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
      specVersion = "1.8";
      identifier = {
        name = "anansi";
        version = "0.3.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "http://john-millikin.com/software/anansi/";
      url = "";
      synopsis = "Simple literate programming preprocessor";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.monads-tf)
          (hsPkgs.containers)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
        ];
      };
      exes = {
        "anansi" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.monads-tf)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.anansi)
          ];
        };
      };
    };
  }