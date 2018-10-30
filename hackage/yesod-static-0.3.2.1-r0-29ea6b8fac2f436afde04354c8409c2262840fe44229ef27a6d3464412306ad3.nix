{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "yesod-static";
        version = "0.3.2.1";
      };
      license = "BSD-3-Clause";
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
          (hsPkgs.pureMD5)
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
          (hsPkgs.enumerator)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.old-time)
            (hsPkgs.yesod-core)
            (hsPkgs.base64-bytestring)
            (hsPkgs.pureMD5)
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
            (hsPkgs.enumerator)
          ];
        };
      };
    };
  }