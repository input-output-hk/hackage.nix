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
      specVersion = "1.10";
      identifier = {
        name = "pipes-s3";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Ben Gamari";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/pipes-s3";
      url = "";
      synopsis = "A simple interface for streaming data to and from Amazon S3";
      description = "This package provides a simple interface for streaming data to and from\nAmazon's S3 cloud storage service with the @pipes@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-safe)
          (hsPkgs.pipes)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.resourcet)
          (hsPkgs.aws)
        ];
      };
    };
  }