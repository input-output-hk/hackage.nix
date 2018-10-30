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
        name = "hxt-cache";
        version = "0.0.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2009 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "Cache for HXT XML Documents and other binary data";
      description = "Extension for caching XML documents and other binary data in cache directory\nof the local filesystem. The module exports a version of readDocument with the\nadditional cache functionality.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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
          (hsPkgs.hxt-binary)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.unix)
          (hsPkgs.SHA)
        ];
      };
    };
  }