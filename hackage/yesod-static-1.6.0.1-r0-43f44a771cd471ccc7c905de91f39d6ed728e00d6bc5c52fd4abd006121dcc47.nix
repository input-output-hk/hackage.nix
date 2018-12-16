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
        name = "yesod-static";
        version = "1.6.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>, Greg Weber <greg@gregweber.info>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Static file serving subsite for Yesod Web Framework.";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod-static>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.cryptonite-conduit)
          (hsPkgs.css-text)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.hjsmin)
          (hsPkgs.http-types)
          (hsPkgs.memory)
          (hsPkgs.mime-types)
          (hsPkgs.process)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
          (hsPkgs.wai-app-static)
          (hsPkgs.yesod-core)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.yesod-test)
            (hsPkgs.wai-extra)
            (hsPkgs.HUnit)
            (hsPkgs.async)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.cryptonite-conduit)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.hjsmin)
            (hsPkgs.http-types)
            (hsPkgs.memory)
            (hsPkgs.mime-types)
            (hsPkgs.process)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.yesod-core)
          ];
        };
      };
    };
  }