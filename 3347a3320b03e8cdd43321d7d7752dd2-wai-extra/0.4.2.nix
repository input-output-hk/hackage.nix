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
      specVersion = "1.8";
      identifier = {
        name = "wai-extra";
        version = "0.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "Provides some basic WAI handlers and middleware.";
      description = "The goal here is to provide common features without many dependencies.";
      buildType = "Simple";
    };
    components = {
      "wai-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.wai)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.network)
          (hsPkgs.directory)
          (hsPkgs.zlib-bindings)
          (hsPkgs.blaze-builder-enumerator)
          (hsPkgs.transformers)
          (hsPkgs.enumerator)
          (hsPkgs.blaze-builder)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.case-insensitive)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-test)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.wai)
            (hsPkgs.http-types)
            (hsPkgs.transformers)
            (hsPkgs.enumerator)
            (hsPkgs.zlib)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.zlib-bindings)
            (hsPkgs.blaze-builder-enumerator)
            (hsPkgs.blaze-builder)
          ];
        };
      };
    };
  }