{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hPushover"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Wander Hillen";
      maintainer = "wjw.hillen@gmail.com";
      author = "Wander Hillen";
      homepage = "tot";
      url = "";
      synopsis = "Pushover.net API functions";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          ];
        };
      };
    }