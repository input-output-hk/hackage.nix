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
        version = "1.2.2.3";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.old-time)
          (hsPkgs.yesod-core)
          (hsPkgs.base64-bytestring)
          (hsPkgs.byteable)
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
          (hsPkgs.cryptohash-conduit)
          (hsPkgs.cryptohash)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.data-default)
          (hsPkgs.shakespeare-css)
          (hsPkgs.mime-types)
          (hsPkgs.hjsmin)
          (hsPkgs.filepath)
          (hsPkgs.resourcet)
          (hsPkgs.unordered-containers)
          (hsPkgs.process)
          (hsPkgs.async)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.yesod-test)
            (hsPkgs.wai-test)
            (hsPkgs.HUnit)
            (hsPkgs.containers)
            (hsPkgs.old-time)
            (hsPkgs.yesod-core)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.byteable)
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
            (hsPkgs.cryptohash-conduit)
            (hsPkgs.cryptohash)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.data-default)
            (hsPkgs.shakespeare-css)
            (hsPkgs.mime-types)
            (hsPkgs.hjsmin)
            (hsPkgs.process-conduit)
            (hsPkgs.filepath)
            (hsPkgs.resourcet)
            (hsPkgs.unordered-containers)
            (hsPkgs.async)
            (hsPkgs.process)
          ];
        };
      };
    };
  }