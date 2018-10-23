{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "colour-space";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsagemue \$ uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/colour-space";
      url = "";
      synopsis = "Instances of the manifold-classes for colour types";
      description = "";
      buildType = "Simple";
    };
    components = {
      "colour-space" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.manifolds)
          (hsPkgs.vector-space)
          (hsPkgs.semigroups)
          (hsPkgs.colour)
          (hsPkgs.JuicyPixels)
        ];
      };
    };
  }