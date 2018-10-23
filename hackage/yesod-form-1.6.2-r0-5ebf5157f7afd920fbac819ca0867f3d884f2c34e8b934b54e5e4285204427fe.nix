{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "yesod-form";
        version = "1.6.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Form handling support for Yesod Web Framework";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod-form>.  Third-party packages which you can find useful: <http://hackage.haskell.org/package/yesod-form-richtext yesod-form-richtext> - richtext form fields (currntly it provides only Summernote support).";
      buildType = "Simple";
    };
    components = {
      "yesod-form" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.email-validate)
          (hsPkgs.persistent)
          (hsPkgs.resourcet)
          (hsPkgs.semigroups)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.xss-sanitize)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-persistent)
        ] ++ pkgs.lib.optional (flags.network-uri) (hsPkgs.network-uri);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod-form)
            (hsPkgs.time)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }