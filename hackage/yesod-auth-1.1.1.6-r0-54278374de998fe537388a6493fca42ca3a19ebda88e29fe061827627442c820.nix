{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = { name = "yesod-auth"; version = "1.1.1.6"; };
      license = "MIT";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.authenticate)
          (hsPkgs.bytestring)
          (hsPkgs.yesod-core)
          (hsPkgs.wai)
          (hsPkgs.template-haskell)
          (hsPkgs.pureMD5)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.mime-mail)
          (hsPkgs.yesod-persistent)
          (hsPkgs.hamlet)
          (hsPkgs.shakespeare-css)
          (hsPkgs.yesod-json)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.yesod-form)
          (hsPkgs.transformers)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.SHA)
          (hsPkgs.http-conduit)
          (hsPkgs.aeson)
          (hsPkgs.pwstore-fast)
          (hsPkgs.lifted-base)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          ];
        };
      };
    }