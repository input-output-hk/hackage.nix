{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wai-frontend-monadcgi";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "";
      url = "";
      synopsis = "Allows programs written against MonadCGI to run with any WAI handler. (deprecated)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "wai-frontend-monadcgi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cgi)
          (hsPkgs.wai)
        ];
      };
    };
  }