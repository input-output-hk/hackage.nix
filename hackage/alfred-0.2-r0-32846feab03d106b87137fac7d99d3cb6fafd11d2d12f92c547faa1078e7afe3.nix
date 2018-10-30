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
      specVersion = "1.9.2";
      identifier = {
        name = "alfred";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paba@di.ku.dk";
      author = "Patrick Bahr";
      homepage = "";
      url = "";
      synopsis = "utility library for Alfred version 2";
      description = "A utility library for writing workflows for Alfred version 2 (<http://www.alfredapp.com>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.xmlgen)
          (hsPkgs.network)
          (hsPkgs.HTTP)
          (hsPkgs.hexpat)
        ];
      };
    };
  }