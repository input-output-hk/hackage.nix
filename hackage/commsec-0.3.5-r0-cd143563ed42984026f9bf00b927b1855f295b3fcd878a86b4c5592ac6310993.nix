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
        name = "commsec";
        version = "0.3.5";
      };
      license = "BSD-3-Clause";
      copyright = "Thomas M. DuBuisson (2013)";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson";
      homepage = "";
      url = "";
      synopsis = "Provide communications security using symmetric ephemeral keys";
      description = "This package provides confidentiallity,\nintegrity and replay detection. Users must\nprovide ephemeral keys for one time use (reuse\nwill compromise the security guarentees).\nStarting with shared secret, this package\nbuilds bi-directional channels for datagram\nbased communication.";
      buildType = "Simple";
    };
    components = {
      "commsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cipher-aes128)
          (hsPkgs.bytestring)
          (hsPkgs.crypto-api)
          (hsPkgs.network)
        ];
      };
    };
  }