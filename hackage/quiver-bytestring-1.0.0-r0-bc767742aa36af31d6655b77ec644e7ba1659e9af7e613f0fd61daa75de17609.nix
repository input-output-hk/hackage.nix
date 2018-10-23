{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "quiver-bytestring";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Patryk Zadarnowski";
      maintainer = "Patryk Zadarnowski <pat@jantar.org>";
      author = "Patryk Zadarnowski";
      homepage = "https://github.com/zadarnowski/quiver-bytestring";
      url = "";
      synopsis = "Quiver combinators for bytestring streaming";
      description = "This library provides a set of combinators for efficient\nstreaming of bytestring data in the Quiver framework.";
      buildType = "Simple";
    };
    components = {
      "quiver-bytestring" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.quiver)
        ];
      };
    };
  }