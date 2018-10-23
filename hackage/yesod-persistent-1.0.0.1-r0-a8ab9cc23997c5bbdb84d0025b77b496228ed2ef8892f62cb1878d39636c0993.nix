{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod-persistent";
        version = "1.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Some helpers for using Persistent from Yesod.";
      description = "Some helpers for using Persistent from Yesod.";
      buildType = "Simple";
    };
    components = {
      "yesod-persistent" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.transformers)
        ];
      };
    };
  }