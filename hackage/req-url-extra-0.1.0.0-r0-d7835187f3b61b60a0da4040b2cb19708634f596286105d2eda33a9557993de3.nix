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
      specVersion = "1.18";
      identifier = {
        name = "req-url-extra";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2018 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/req-url-extra#readme";
      url = "";
      synopsis = "Provides URI/URL helper functions for use with Req";
      description = "This package provides helper functions for use with URIs and URLs in Req.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.modern-uri)
          (hsPkgs.req)
        ];
      };
      exes = {
        "sample" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.data-default-class)
            (hsPkgs.modern-uri)
            (hsPkgs.req)
            (hsPkgs.req-url-extra)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "req-url-extra-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.modern-uri)
            (hsPkgs.req)
            (hsPkgs.req-url-extra)
          ];
        };
      };
    };
  }