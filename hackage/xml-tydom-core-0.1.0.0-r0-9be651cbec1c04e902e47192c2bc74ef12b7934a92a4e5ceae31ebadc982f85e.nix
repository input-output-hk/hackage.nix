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
      specVersion = "1.10";
      identifier = {
        name = "xml-tydom-core";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Jonathan Merritt";
      maintainer = "j.s.merritt@gmail.com";
      author = "Jonathan Merritt";
      homepage = "https://github.com/lancelet/xml-tydom";
      url = "";
      synopsis = "Typed XML encoding (core library).";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.QuickCheck)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
      };
    };
  }