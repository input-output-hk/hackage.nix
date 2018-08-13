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
        name = "wai-frontend-monadcgi";
        version = "3.0.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "";
      url = "";
      synopsis = "Run CGI apps on WAI.";
      description = "API docs and the README are available at <http://www.stackage.org/package/wai-frontend-monadcgi>.";
      buildType = "Simple";
    };
    components = {
      "wai-frontend-monadcgi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cgi)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.case-insensitive)
          (hsPkgs.wai)
        ];
      };
    };
  }