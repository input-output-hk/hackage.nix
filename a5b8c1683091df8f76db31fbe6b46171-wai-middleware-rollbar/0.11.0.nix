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
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-rollbar";
        version = "0.11.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Hardy Jones";
      maintainer = "jones3.hardy@gmail.com";
      author = "Hardy Jones";
      homepage = "https://github.com/joneshf/wai-middleware-rollbar#readme";
      url = "";
      synopsis = "Middleware that communicates to Rollbar.";
      description = "Middleware that communicates to Rollbar.";
      buildType = "Simple";
    };
    components = {
      "wai-middleware-rollbar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.hostname)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.rollbar-hs)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uuid)
          (hsPkgs.wai)
        ];
      };
    };
  }