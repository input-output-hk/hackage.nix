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
        name = "rss";
        version = "3000.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "Jeremy Shaw 2004, Bjorn Bringert 2004-2006";
      maintainer = "bjorn@bringert.net";
      author = "Jeremy Shaw, Bjorn Bringert";
      homepage = "";
      url = "";
      synopsis = "A library for generating RSS 2.0 feeds.";
      description = "This library allows you to generate RSS 2.0 feeds.";
      buildType = "Custom";
    };
    components = {
      "rss" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.HaXml)
        ];
      };
    };
  }