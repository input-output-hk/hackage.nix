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
        name = "wai-handler-scgi";
        version = "1.3.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/web-application-interface";
      url = "";
      synopsis = "Wai handler to SCGI";
      description = "Wai handler to SCGI";
      buildType = "Simple";
    };
    components = {
      "wai-handler-scgi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.bytestring)
        ];
      };
    };
  }