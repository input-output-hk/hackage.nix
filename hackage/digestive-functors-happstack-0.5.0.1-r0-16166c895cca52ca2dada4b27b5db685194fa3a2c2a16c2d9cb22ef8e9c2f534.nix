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
      specVersion = "1.6";
      identifier = {
        name = "digestive-functors-happstack";
        version = "0.5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://github.com/jaspervdj/digestive-functors";
      url = "";
      synopsis = "Happstack backend for the digestive-functors library";
      description = "Happstack backend for the digestive-functors library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.digestive-functors)
          (hsPkgs.happstack-server)
          (hsPkgs.text)
        ];
      };
    };
  }