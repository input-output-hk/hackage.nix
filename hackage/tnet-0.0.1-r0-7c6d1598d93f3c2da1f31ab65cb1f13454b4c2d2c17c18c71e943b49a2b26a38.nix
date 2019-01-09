{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "tnet"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "het32@cornell.edu";
      author = "Harry Terkelsen";
      homepage = "";
      url = "";
      synopsis = "Library for encoding/decoding TNET strings for PGI";
      description = "Provides an API to encode/decode Haskell datatypes into the\nTNET protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }