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
      specVersion = "1.6";
      identifier = {
        name = "yesod-form";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/";
      url = "";
      synopsis = "Form handling support for Yesod Web Framework";
      description = "";
      buildType = "Simple";
    };
    components = {
      "yesod-form" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.time)
          (hsPkgs.hamlet)
          (hsPkgs.persistent)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.data-default)
          (hsPkgs.xss-sanitize)
          (hsPkgs.blaze-builder)
          (hsPkgs.network)
          (hsPkgs.email-validate)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
        ];
      };
    };
  }