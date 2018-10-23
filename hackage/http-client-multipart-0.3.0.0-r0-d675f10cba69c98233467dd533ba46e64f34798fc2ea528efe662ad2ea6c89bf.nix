{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "http-client-multipart";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/http-client";
      url = "";
      synopsis = "Generate multipart uploads for http-client. (deprecated)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "http-client-multipart" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-client)
        ];
      };
    };
  }