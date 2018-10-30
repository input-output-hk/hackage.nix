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
      specVersion = "1.2";
      identifier = {
        name = "GoogleDirections";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Favil Orbedios";
      maintainer = "Favil Orbedios <favilo@gmail.com>";
      author = "Favil Orbedios <favilo@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell Interface to Google Directions API";
      description = "An interface to the Google Directions API";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.dataenc)
          (hsPkgs.base)
          (hsPkgs.AttoJson)
          (hsPkgs.download-curl)
        ];
      };
    };
  }