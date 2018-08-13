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
        name = "yesod-test";
        version = "1.4.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman, Greg Weber, Nubis <nubis@woobiz.com.ar>";
      author = "Nubis <nubis@woobiz.com.ar>";
      homepage = "http://www.yesodweb.com";
      url = "";
      synopsis = "integration testing for WAI/Yesod Applications";
      description = "Behaviour Oriented integration Testing for Yesod Applications";
      buildType = "Simple";
    };
    components = {
      "yesod-test" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.persistent)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.network)
          (hsPkgs.http-types)
          (hsPkgs.HUnit)
          (hsPkgs.hspec)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.text)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          (hsPkgs.containers)
          (hsPkgs.html-conduit)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.monad-control)
          (hsPkgs.time)
          (hsPkgs.blaze-builder)
          (hsPkgs.cookie)
          (hsPkgs.yesod-core)
        ];
      };
      tests = {
        "test" = {
          depends  = [
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
          ];
        };
      };
    };
  }