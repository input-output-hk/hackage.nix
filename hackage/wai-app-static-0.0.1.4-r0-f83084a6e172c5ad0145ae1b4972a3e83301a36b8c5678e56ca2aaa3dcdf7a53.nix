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
      specVersion = "1.6";
      identifier = {
        name = "wai-app-static";
        version = "0.0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/";
      url = "";
      synopsis = "WAI application for static serving";
      description = "Also provides some helper functions and datatypes for use outside of WAI.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.bytestring)
          (hsPkgs.web-routes)
          (hsPkgs.transformers)
          (hsPkgs.unix-compat)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.blaze-html)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.file-embed)
          (hsPkgs.text)
        ];
      };
    };
  }