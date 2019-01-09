{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mime-string"; version = "0.5"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "guillaumh@gmail.com";
      author = "Ian Lynagh";
      homepage = "";
      url = "";
      synopsis = "MIME implementation for String's.";
      description = "Implementation of the MIME RFCs 2045-2049.\nRather rough around the edges at the moment.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.iconv)
          (hsPkgs.base64-string)
          (hsPkgs.old-time)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.old-locale)
          ];
        };
      };
    }