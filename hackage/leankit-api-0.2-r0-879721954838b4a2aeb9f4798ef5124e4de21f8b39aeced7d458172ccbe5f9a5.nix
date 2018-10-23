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
        name = "leankit-api";
        version = "0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "daniel.torok@prezi.com";
      author = "Daniel Torok";
      homepage = "";
      url = "";
      synopsis = "LeanKit API";
      description = "A lightweight API for LeanKit (http:\\/\\/leankit.com)";
      buildType = "Simple";
    };
    components = {
      "leankit-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.colour)
          (hsPkgs.curl)
          (hsPkgs.split)
        ];
      };
    };
  }