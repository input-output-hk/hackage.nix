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
        name = "fadno-braids";
        version = "0.1.0";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "spopejoy@panix.com";
      author = "Stuart Popejoy";
      homepage = "http://github.com/slpopejoy/";
      url = "";
      synopsis = "Braid representations in Haskell";
      description = "Braids represented as Haskell types with support for generation and transformations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.diagrams)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-rasterific)
          (hsPkgs.lens)
          (hsPkgs.random)
        ];
      };
    };
  }