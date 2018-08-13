{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "commsec";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Thomas M. DuBuisson (2013)";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson";
      homepage = "";
      url = "";
      synopsis = "Communications security\ndescription:        A basic communications security package that provides confidentiallity, integrity and replay detection.";
      description = "";
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