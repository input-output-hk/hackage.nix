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
        name = "wai-conduit";
        version = "3.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/yesodweb/wai";
      url = "";
      synopsis = "conduit wrappers for WAI";
      description = "Since version 3.0.0, WAI has no built-in streaming data abstraction.\nThis library provides similar functionality to what existed in WAI 2.x.";
      buildType = "Simple";
    };
    components = {
      "wai-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.conduit)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder)
        ];
      };
    };
  }