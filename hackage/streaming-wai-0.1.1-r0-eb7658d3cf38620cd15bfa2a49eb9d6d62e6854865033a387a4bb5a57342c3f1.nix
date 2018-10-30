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
        name = "streaming-wai";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "2015 William Casarin";
      maintainer = "bill@casarin.me";
      author = "William Casarin";
      homepage = "http://github.com/jb55/streaming-wai";
      url = "";
      synopsis = "Streaming Wai utilities";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.streaming)
        ];
      };
    };
  }