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
      specVersion = "1.18";
      identifier = {
        name = "lambdacms-core";
        version = "0.3.0.1";
      };
      license = "MIT";
      copyright = "(c) 2014-2015 Hoppinger";
      maintainer = "cies@AT-hoppinger.com";
      author = "Cies Breijs, Mats Rietdijk, Rutger van Aalst";
      homepage = "http://lambdacms.org";
      url = "";
      synopsis = "LambdaCms 'core' subsite for Yesod apps";
      description = "LambdaCms is a Content Management System (CMS) in Haskell.\nusing Yesod.";
      buildType = "Simple";
    };
    components = {
      "lambdacms-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-form)
          (hsPkgs.persistent)
          (hsPkgs.text)
          (hsPkgs.shakespeare)
          (hsPkgs.uuid)
          (hsPkgs.time)
          (hsPkgs.friendly-time)
          (hsPkgs.old-locale)
          (hsPkgs.mime-mail)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.gravatar)
          (hsPkgs.file-embed)
          (hsPkgs.lists)
          (hsPkgs.wai)
          (hsPkgs.esqueleto)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod)
            (hsPkgs.hspec)
            (hsPkgs.classy-prelude)
            (hsPkgs.classy-prelude-yesod)
            (hsPkgs.lambdacms-core)
          ];
        };
      };
    };
  }