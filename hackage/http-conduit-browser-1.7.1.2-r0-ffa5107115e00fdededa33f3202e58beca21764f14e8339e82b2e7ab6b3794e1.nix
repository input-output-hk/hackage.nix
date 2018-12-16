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
        version = "1.7.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kudah <kudahkukarek@gmail.com>";
      author = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      homepage = "https://github.com/exbb2/http-conduit-browser";
      url = "";
      synopsis = "Browser interface to the http-conduit package";
      description = "This package creates a monad representing things that browsers do,\nletting you elegantly describe a browsing session. This package wraps\nthe http-conduit package by Michael Snoyman.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.data-default)
          (hsPkgs.cookie)
          (hsPkgs.utf8-string)
          (hsPkgs.case-insensitive)
          (hsPkgs.time)
          (hsPkgs.http-types)
          (hsPkgs.conduit)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.socks)
          (hsPkgs.network)
          (hsPkgs.failure)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.http-conduit)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.data-default)
            (hsPkgs.conduit)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.utf8-string)
            (hsPkgs.transformers)
            (hsPkgs.resourcet)
            (hsPkgs.network-conduit)
            (hsPkgs.lifted-base)
            (hsPkgs.http-types)
            (hsPkgs.base64-bytestring)
            (hsPkgs.cookie)
            (hsPkgs.time)
            (hsPkgs.mtl)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.socks)
            (hsPkgs.network)
            (hsPkgs.failure)
            (hsPkgs.monad-control)
          ];
        };
      };
    };
  }