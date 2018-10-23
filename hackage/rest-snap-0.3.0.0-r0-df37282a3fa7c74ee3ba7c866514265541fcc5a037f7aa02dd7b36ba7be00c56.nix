{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "rest-snap";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@silk.co";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Rest driver for Snap.";
      description = "Rest driver for Snap.";
      buildType = "Simple";
    };
    components = {
      "rest-snap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.rest-core)
          (hsPkgs.safe)
          (hsPkgs.snap-core)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-encode)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }