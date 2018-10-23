{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "yesod-s3";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Copyright (C) 2013 Timo von Holtz";
      maintainer = "tvh@tvholtz.de";
      author = "Timo von Holtz";
      homepage = "https://github.com/tvh/yesod-s3";
      url = "";
      synopsis = "Simple Helper Library for using Amazon's Simple Storage Service (S3) with Yesod";
      description = "";
      buildType = "Simple";
    };
    components = {
      "yesod-s3" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hS3)
          (hsPkgs.yesod-core)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.conduit)
          (hsPkgs.network)
        ];
      };
    };
  }