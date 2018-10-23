{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { ghc7 = true; };
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "yesod-auth";
        version = "0.7.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Patrick Brisbin";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Authentication for Yesod.";
      description = "Authentication for Yesod.";
      buildType = "Simple";
    };
    components = {
      "yesod-auth" = {
        depends  = [
          (hsPkgs.authenticate)
          (hsPkgs.bytestring)
          (hsPkgs.yesod-core)
          (hsPkgs.wai)
          (hsPkgs.template-haskell)
          (hsPkgs.pureMD5)
          (hsPkgs.random)
          (hsPkgs.control-monad-attempt)
          (hsPkgs.text)
          (hsPkgs.mime-mail)
          (hsPkgs.blaze-html)
          (hsPkgs.yesod-persistent)
          (hsPkgs.hamlet)
          (hsPkgs.shakespeare-css)
          (hsPkgs.yesod-json)
          (hsPkgs.containers)
          (hsPkgs.yesod-form)
          (hsPkgs.transformers)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.SHA)
          (hsPkgs.http-enumerator)
          (hsPkgs.aeson-native)
          (hsPkgs.pwstore-fast)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }