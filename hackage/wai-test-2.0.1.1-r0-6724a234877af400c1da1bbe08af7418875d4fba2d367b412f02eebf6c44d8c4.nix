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
        name = "wai-test";
        version = "2.0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/web-application-interface";
      url = "";
      synopsis = "Unit test framework (built on HUnit) for WAI applications.";
      description = "Unit test framework (built on HUnit) for WAI applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.blaze-builder-conduit)
          (hsPkgs.cookie)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
          (hsPkgs.network)
          (hsPkgs.deepseq)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wai-test)
            (hsPkgs.wai)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }