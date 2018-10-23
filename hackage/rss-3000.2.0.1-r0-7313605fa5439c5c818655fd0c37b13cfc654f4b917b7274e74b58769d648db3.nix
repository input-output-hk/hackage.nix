{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "rss";
        version = "3000.2.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "Jeremy Shaw 2004, Bjorn Bringert 2004-2006";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Jeremy Shaw, Bjorn Bringert";
      homepage = "https://github.com/basvandijk/rss";
      url = "";
      synopsis = "A library for generating RSS 2.0 feeds.";
      description = "This library allows you to generate RSS 2.0 feeds.";
      buildType = "Simple";
    };
    components = {
      "rss" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.HaXml)
          (hsPkgs.time)
          (hsPkgs.old-locale)
        ];
      };
    };
  }