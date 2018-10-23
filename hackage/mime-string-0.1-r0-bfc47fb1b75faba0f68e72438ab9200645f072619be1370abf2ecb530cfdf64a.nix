{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "mime-string";
        version = "0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Ian Lynagh, 2005, 2007";
      maintainer = "igloo@earth.li";
      author = "Ian Lynagh";
      homepage = "http://urchin.earth.li/~ian/cabal/mime-string/";
      url = "";
      synopsis = "MIME implementation for String's.";
      description = "Implementation of the MIME RFCs 2045-2049.\nA bit rough around the edges.";
      buildType = "Custom";
    };
    components = {
      "mime-string" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.iconv)
          (hsPkgs.base64-string)
        ];
      };
    };
  }