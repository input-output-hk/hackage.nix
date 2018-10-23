{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "twentefp";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "christiaan.baaij@gmail.com";
      author = "Christiaan Baaij";
      homepage = "";
      url = "";
      synopsis = "Lab Assignments Environment at Univeriteit Twente";
      description = "Lab Assignments Environment at Univeriteit Twente";
      buildType = "Simple";
    };
    components = {
      "twentefp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gloss)
          (hsPkgs.time)
          (hsPkgs.parsec)
        ];
      };
    };
  }