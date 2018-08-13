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
        name = "yesod-form";
        version = "1.2.1.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Form handling support for Yesod Web Framework";
      description = "Form handling support for Yesod Web Framework";
      buildType = "Simple";
    };
    components = {
      "yesod-form" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-persistent)
          (hsPkgs.time)
          (hsPkgs.hamlet)
          (hsPkgs.shakespeare-css)
          (hsPkgs.shakespeare-js)
          (hsPkgs.persistent)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.data-default)
          (hsPkgs.xss-sanitize)
          (hsPkgs.blaze-builder)
          (hsPkgs.network)
          (hsPkgs.email-validate)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.containers)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.attoparsec)
          (hsPkgs.crypto-api)
          (hsPkgs.aeson)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod-form)
            (hsPkgs.time)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }