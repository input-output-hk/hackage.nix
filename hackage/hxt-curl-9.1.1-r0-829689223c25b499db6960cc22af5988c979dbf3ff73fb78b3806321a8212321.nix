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
      specVersion = "1.6";
      identifier = {
        name = "hxt-curl";
        version = "9.1.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "LibCurl interface for HXT";
      description = "LibCurl interface for HXT";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.curl)
          (hsPkgs.hxt)
        ];
      };
    };
  }