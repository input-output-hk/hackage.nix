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
        name = "eap";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Erick Gonzalez";
      maintainer = "erick@codemonkeylabs.de";
      author = "Erick Gonzalez";
      homepage = "https://github.com/erickg/eap#readme";
      url = "";
      synopsis = "Extensible Authentication Protocol (EAP)";
      description = "This module provides types and on the wire de/coding of EAP packets as per RFC 3748";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
        ];
      };
    };
  }