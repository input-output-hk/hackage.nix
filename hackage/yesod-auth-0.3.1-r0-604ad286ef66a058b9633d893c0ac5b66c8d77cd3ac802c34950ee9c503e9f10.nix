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
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Patrick Brisbin";
      homepage = "http://docs.yesodweb.com/";
      url = "";
      synopsis = "Authentication for Yesod.";
      description = "";
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
          (hsPkgs.data-object)
          (hsPkgs.control-monad-attempt)
          (hsPkgs.text)
          (hsPkgs.mime-mail)
          (hsPkgs.blaze-html)
          (hsPkgs.yesod-persistent)
          (hsPkgs.hamlet)
          (hsPkgs.yesod-json)
          (hsPkgs.containers)
          (hsPkgs.json-types)
          (hsPkgs.text)
          (hsPkgs.yesod-form)
          (hsPkgs.transformers)
          (hsPkgs.persistent)
          (hsPkgs.SHA)
          (hsPkgs.http-enumerator)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }