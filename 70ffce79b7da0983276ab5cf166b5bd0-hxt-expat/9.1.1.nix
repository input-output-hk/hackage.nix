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
      specVersion = "1.6";
      identifier = {
        name = "hxt-expat";
        version = "9.1.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "Expat parser for HXT";
      description = "The Expat interface for the HXT.";
      buildType = "Simple";
    };
    components = {
      "hxt-expat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hexpat)
          (hsPkgs.hxt)
        ];
      };
    };
  }