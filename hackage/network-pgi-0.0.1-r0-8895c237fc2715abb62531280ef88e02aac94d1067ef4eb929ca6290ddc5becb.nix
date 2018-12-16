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
        name = "network-pgi";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "het32@cornell.edu";
      author = "Harry Terkelsen";
      homepage = "";
      url = "";
      synopsis = "Library for writing PGI applications";
      description = "Provides an API to create and serve PGI applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec-enumerator)
          (hsPkgs.enumerator)
          (hsPkgs.tnet)
        ];
      };
    };
  }