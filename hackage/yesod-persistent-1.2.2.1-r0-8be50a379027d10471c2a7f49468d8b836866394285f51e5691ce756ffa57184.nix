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
      specVersion = "1.8";
      identifier = {
        name = "yesod-persistent";
        version = "1.2.2.1";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.transformers)
          (hsPkgs.blaze-builder)
          (hsPkgs.conduit)
          (hsPkgs.lifted-base)
          (hsPkgs.pool-conduit)
          (hsPkgs.resourcet)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.wai-test)
            (hsPkgs.yesod-core)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.yesod-persistent)
            (hsPkgs.conduit)
            (hsPkgs.blaze-builder)
            (hsPkgs.persistent)
            (hsPkgs.text)
          ];
        };
      };
    };
  }