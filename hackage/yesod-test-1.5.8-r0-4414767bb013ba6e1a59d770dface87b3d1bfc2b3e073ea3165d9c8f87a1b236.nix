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
        name = "yesod-test";
        version = "1.5.8";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman, Greg Weber, Nubis <nubis@woobiz.com.ar>";
      author = "Nubis <nubis@woobiz.com.ar>";
      homepage = "http://www.yesodweb.com";
      url = "";
      synopsis = "integration testing for WAI/Yesod Applications";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod-test>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HUnit)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.cookie)
          (hsPkgs.hspec-core)
          (hsPkgs.html-conduit)
          (hsPkgs.http-types)
          (hsPkgs.monad-control)
          (hsPkgs.network)
          (hsPkgs.persistent)
          (hsPkgs.pretty-show)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          (hsPkgs.yesod-core)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yesod-test)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.xml-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.html-conduit)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-form)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.lifted-base)
            (hsPkgs.http-types)
          ];
        };
      };
    };
  }