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
        name = "hxt-cache";
        version = "9.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "Cache for HXT XML Documents and other binary data";
      description = "Extension for caching XML documents and other binary data in cache directory\nof the local filesystem.";
      buildType = "Simple";
    };
    components = {
      "hxt-cache" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskell98)
          (hsPkgs.hxt)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.unix)
          (hsPkgs.SHA)
        ];
      };
    };
  }