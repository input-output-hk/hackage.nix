{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "http-client";
        version = "0.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/http-client";
      url = "";
      synopsis = "An HTTP client engine, intended as a base layer for more user-friendly packages.";
      description = "This codebase has been refactored from http-conduit.";
      buildType = "Simple";
    };
    components = {
      "http-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder)
          (hsPkgs.data-default)
          (hsPkgs.time)
          (hsPkgs.network)
          (hsPkgs.zlib-bindings)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.deepseq)
          (hsPkgs.case-insensitive)
          (hsPkgs.failure)
          (hsPkgs.base64-bytestring)
          (hsPkgs.publicsuffixlist)
          (hsPkgs.cookie)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-client)
            (hsPkgs.hspec)
            (hsPkgs.monad-control)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.http-types)
            (hsPkgs.blaze-builder)
            (hsPkgs.data-default)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.zlib-bindings)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
            (hsPkgs.case-insensitive)
            (hsPkgs.failure)
            (hsPkgs.base64-bytestring)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }