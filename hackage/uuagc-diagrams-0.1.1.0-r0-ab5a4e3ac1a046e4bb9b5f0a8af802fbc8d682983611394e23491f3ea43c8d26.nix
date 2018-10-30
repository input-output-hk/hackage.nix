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
        name = "uuagc-diagrams";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "J.Bransen@uu.nl";
      author = "Jeroen Bransen";
      homepage = "";
      url = "";
      synopsis = "Utility for drawing attribute grammar pictures with the diagrams package";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.diagrams-lib)
          (hsPkgs.SVGFonts)
        ];
      };
    };
  }