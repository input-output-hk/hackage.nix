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
      specVersion = "1.8";
      identifier = {
        name = "hPushover";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Wander Hillen";
      maintainer = "wjw.hillen@gmail.com";
      author = "Wander Hillen";
      homepage = "https://github.com/WJWH/hPushover";
      url = "";
      synopsis = "Pushover.net API functions.";
      description = "Small but complete library that sends push messages to Android an Apple devices using the Pushover.net app.";
      buildType = "Simple";
    };
    components = {
      "hPushover" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
        ];
      };
    };
  }