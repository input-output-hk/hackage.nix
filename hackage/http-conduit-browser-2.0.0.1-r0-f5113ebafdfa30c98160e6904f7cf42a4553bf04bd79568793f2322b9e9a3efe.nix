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
      specVersion = "1.8";
      identifier = {
        name = "http-conduit-browser";
        version = "2.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      homepage = "https://github.com/exbb2/http-conduit-browser";
      url = "";
      synopsis = "Browser interface to the http-conduit package";
      description = "This package creates a monad representing things that browsers do,\nletting you elegantly describe a browsing session. This package wraps\nthe http-conduit package by Michael Snoyman.\nThis package is deprecated, use <http://hackage.haskell.org/package/wreq> instead";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.exceptions)
          (hsPkgs.data-default)
          (hsPkgs.cookie)
          (hsPkgs.time)
          (hsPkgs.http-types)
          (hsPkgs.conduit)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.network-uri)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.http-conduit-browser)
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.data-default)
            (hsPkgs.conduit)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.resourcet)
            (hsPkgs.lifted-base)
            (hsPkgs.http-types)
            (hsPkgs.base64-bytestring)
            (hsPkgs.cookie)
            (hsPkgs.time)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.network)
            (hsPkgs.monad-control)
          ];
        };
      };
    };
  }