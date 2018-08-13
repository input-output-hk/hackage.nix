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
        version = "3.0.2.1";
      };
      license = "MIT";
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
          (hsPkgs.transformers)
          (hsPkgs.blaze-builder)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.case-insensitive)
          (hsPkgs.data-default-class)
          (hsPkgs.fast-logger)
          (hsPkgs.wai-logger)
          (hsPkgs.ansi-terminal)
          (hsPkgs.resourcet)
          (hsPkgs.void)
          (hsPkgs.stringsearch)
          (hsPkgs.containers)
          (hsPkgs.base64-bytestring)
          (hsPkgs.word8)
          (hsPkgs.lifted-base)
          (hsPkgs.deepseq)
          (hsPkgs.streaming-commons)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wai-extra)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.wai)
            (hsPkgs.http-types)
            (hsPkgs.transformers)
            (hsPkgs.zlib)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.blaze-builder)
            (hsPkgs.data-default)
            (hsPkgs.fast-logger)
            (hsPkgs.resourcet)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wai-extra)
            (hsPkgs.wai)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }