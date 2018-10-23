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
        name = "dresdner-verkehrsbetriebe";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "vc@braden-walters.info";
      author = "Braden Walters";
      homepage = "";
      url = "";
      synopsis = "Library and program for querying DVB (Dresdner Verkehrsbetriebe AG)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dresdner-verkehrsbetriebe" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "dresdner-verkehrsbetriebe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.aeson)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.unordered-containers)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }