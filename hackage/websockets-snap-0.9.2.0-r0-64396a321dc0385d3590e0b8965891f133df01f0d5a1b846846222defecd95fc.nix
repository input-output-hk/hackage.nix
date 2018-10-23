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
        name = "websockets-snap";
        version = "0.9.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "";
      url = "";
      synopsis = "Snap integration for the websockets library";
      description = "Snap integration for the websockets library";
      buildType = "Simple";
    };
    components = {
      "websockets-snap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.enumerator)
          (hsPkgs.mtl)
          (hsPkgs.snap-core)
          (hsPkgs.snap-server)
          (hsPkgs.websockets)
        ];
      };
    };
  }