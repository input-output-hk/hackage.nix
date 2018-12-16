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
      specVersion = "1.10";
      identifier = {
        name = "http2";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "HTTP/2.0 library including HPACK";
      description = "HTTP/2.0 library including HPACK.\nCurrently only (coming) HPACK 06 is supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.PSQueue)
          (hsPkgs.array)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "hpack-encode" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.PSQueue)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.array)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.word8)
          ];
        };
        "hpack-debug" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.PSQueue)
            (hsPkgs.aeson)
            (hsPkgs.array)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.word8)
          ];
        };
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.PSQueue)
            (hsPkgs.array)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.unordered-containers)
            (hsPkgs.word8)
          ];
        };
        "hpack" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.PSQueue)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.array)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.word8)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }