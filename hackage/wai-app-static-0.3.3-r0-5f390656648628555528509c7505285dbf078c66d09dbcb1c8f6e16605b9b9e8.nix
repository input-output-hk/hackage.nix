{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { print = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "wai-app-static";
        version = "0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/wai";
      url = "";
      synopsis = "WAI application for static serving";
      description = "Also provides some helper functions and datatypes for use outside of WAI.";
      buildType = "Simple";
    };
    components = {
      "wai-app-static" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.unix-compat)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.blaze-html)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.file-embed)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          (hsPkgs.base64-bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.http-date)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.unix-compat)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.http-date)
            (hsPkgs.Cabal)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai-test)
            (hsPkgs.wai)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }