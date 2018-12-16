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
        name = "bronyradiogermany-common";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "darcs@mcohrs.eu";
      author = "Marvin Cohrs";
      homepage = "";
      url = "";
      synopsis = "Common types and URIs for the BronyRadioGermany API bindings.";
      description = "Common types and URIs for the BronyRadioGermany API bindings. Please have a look at bronyradiogermany-conduit or bronyradiogermany-streaming.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.network-uri)
          (hsPkgs.tz)
          (hsPkgs.time)
          (hsPkgs.uuid-types)
        ];
      };
    };
  }