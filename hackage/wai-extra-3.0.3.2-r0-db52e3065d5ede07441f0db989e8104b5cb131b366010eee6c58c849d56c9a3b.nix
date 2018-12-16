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
        name = "wai-extra";
        version = "3.0.3.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "Provides some basic WAI handlers and middleware.";
      description = "API docs and the README are available at <http://www.stackage.org/package/wai-extra>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wai-extra)
            (hsPkgs.wai)
            (hsPkgs.hspec)
            (hsPkgs.transformers)
            (hsPkgs.fast-logger)
            (hsPkgs.http-types)
            (hsPkgs.zlib)
            (hsPkgs.text)
            (hsPkgs.resourcet)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }