{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "http2"; version = "1.5.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "HTTP/2.0 library including frames and HPACK";
      description = "HTTP/2.0 library including frames and HPACK.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.containers)
          (hsPkgs.psqueues)
          (hsPkgs.stm)
          ];
        };
      exes = {
        "hpack-encode" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.containers)
            (hsPkgs.hex)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.word8)
            ];
          };
        "hpack-debug" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.containers)
            (hsPkgs.hex)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.word8)
            ];
          };
        "hpack-stat" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.word8)
            ];
          };
        "frame-encode" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.hex)
            (hsPkgs.http2)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      tests = {
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.containers)
            (hsPkgs.hex)
            (hsPkgs.hspec)
            (hsPkgs.psqueues)
            (hsPkgs.stm)
            (hsPkgs.word8)
            ];
          };
        "hpack" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hex)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.word8)
            ];
          };
        "frame" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hex)
            (hsPkgs.hspec)
            (hsPkgs.http2)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      benchmarks = {
        "priority" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.hashtables)
            (hsPkgs.heaps)
            (hsPkgs.mwc-random)
            (hsPkgs.psqueues)
            (hsPkgs.random)
            (hsPkgs.stm)
            ];
          };
        "header-compression" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.hashtables)
            (hsPkgs.stm)
            ];
          };
        };
      };
    }