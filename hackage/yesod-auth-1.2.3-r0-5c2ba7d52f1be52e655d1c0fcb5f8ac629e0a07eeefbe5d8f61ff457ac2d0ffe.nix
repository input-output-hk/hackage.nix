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
      specVersion = "1.6.0";
      identifier = {
        name = "yesod-auth";
        version = "1.2.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Patrick Brisbin";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Authentication for Yesod.";
      description = "This package provides a pluggable mechanism for allowing users to authenticate with your site. It comes with a number of common plugins, such as OpenID, BrowserID (a.k.a., Mozilla Persona), and email. Other packages are available from Hackage as well. If you've written such an add-on, please notify me so that it can be added to this description.\n\n* <http://hackage.haskell.org/package/yesod-auth-account>: An account authentication plugin for Yesod";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
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
          (hsPkgs.shakespeare-js)
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
          (hsPkgs.network)
          (hsPkgs.http-types)
          (hsPkgs.file-embed)
          (hsPkgs.email-validate)
          (hsPkgs.data-default)
          (hsPkgs.resourcet)
          (hsPkgs.safe)
          (hsPkgs.time)
        ];
      };
    };
  }