{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      blaze_html_0_5 = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod-form";
        version = "1.0.0.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Form handling support for Yesod Web Framework";
      description = "Form handling support for Yesod Web Framework";
      buildType = "Simple";
    };
    components = {
      "yesod-form" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-persistent)
          (hsPkgs.time)
          (hsPkgs.hamlet)
          (hsPkgs.shakespeare-css)
          (hsPkgs.shakespeare-js)
          (hsPkgs.persistent)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.data-default)
          (hsPkgs.xss-sanitize)
          (hsPkgs.blaze-builder)
          (hsPkgs.network)
          (hsPkgs.email-validate)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.containers)
        ] ++ (if flags.blaze_html_0_5
          then [
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
          ]
          else [ (hsPkgs.blaze-html) ]);
      };
    };
  }