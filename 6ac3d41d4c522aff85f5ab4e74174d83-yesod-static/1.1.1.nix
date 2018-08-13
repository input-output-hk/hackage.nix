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
        name = "yesod-static";
        version = "1.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>, Greg Weber <greg@gregweber.info>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Static file serving subsite for Yesod Web Framework.";
      description = "Static file serving subsite for Yesod Web Framework.";
      buildType = "Simple";
    };
    components = {
      "yesod-static" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.old-time)
          (hsPkgs.yesod-core)
          (hsPkgs.base64-bytestring)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.wai-app-static)
          (hsPkgs.wai)
          (hsPkgs.text)
          (hsPkgs.file-embed)
          (hsPkgs.http-types)
          (hsPkgs.unix-compat)
          (hsPkgs.conduit)
          (hsPkgs.crypto-conduit)
          (hsPkgs.cryptohash)
          (hsPkgs.system-filepath)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.old-time)
            (hsPkgs.yesod-core)
            (hsPkgs.base64-bytestring)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.template-haskell)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai)
            (hsPkgs.text)
            (hsPkgs.file-embed)
            (hsPkgs.http-types)
            (hsPkgs.unix-compat)
            (hsPkgs.conduit)
            (hsPkgs.crypto-conduit)
            (hsPkgs.cryptohash)
            (hsPkgs.system-filepath)
          ];
        };
      };
    };
  }