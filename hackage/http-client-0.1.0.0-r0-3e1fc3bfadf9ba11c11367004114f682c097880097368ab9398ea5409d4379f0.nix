{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "http-client"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/http-client";
      url = "";
      synopsis = "An HTTP client engine, intended as a base layer for more user-friendly packages.";
      description = "This codebase has been refactored from http-conduit.\n\nNote that, in its current state, this library is a preview release. It passes tests and seems to work correctly, but has not received a huge level of battle testing yet. I would recommend sticking with http-conduit for production usage until this library has been more thoroughly tested.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
          depends = [
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