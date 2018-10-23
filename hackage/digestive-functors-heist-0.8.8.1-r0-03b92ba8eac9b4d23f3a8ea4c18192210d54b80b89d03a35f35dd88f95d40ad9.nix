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
        name = "digestive-functors-heist";
        version = "0.8.8.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://github.com/jaspervdj/digestive-functors";
      url = "";
      synopsis = "Heist frontend for the digestive-functors library";
      description = "Heist frontend for the digestive-functors library";
      buildType = "Simple";
    };
    components = {
      "digestive-functors-heist" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.digestive-functors)
          (hsPkgs.heist)
          (hsPkgs.map-syntax)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.xmlhtml)
        ];
      };
    };
  }