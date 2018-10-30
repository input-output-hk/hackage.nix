{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "xsd";
        version = "0.3.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Tony Morris";
      maintainer = "code@tmorris.net";
      author = "Tony Morris";
      homepage = "http://code.google.com/p/data-xsd/";
      url = "";
      synopsis = "XML Schema data structures";
      description = "XML Schema data structures (XSD)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.time)
        ];
      };
    };
  }