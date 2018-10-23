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
        name = "wai-handler-fastcgi";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/wai-handler-fastcgi";
      url = "";
      synopsis = "Wai handler to fastcgi";
      description = "";
      buildType = "Configure";
    };
    components = {
      "wai-handler-fastcgi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."fcgi") ];
      };
    };
  }