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
        name = "streaming-binary";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Mathieu Boespflug";
      maintainer = "m@tweag.io";
      author = "Mathieu Boespflug";
      homepage = "https://github.com/mboes/streaming-binary#readme";
      url = "";
      synopsis = "Streaming interface to binary.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.streaming)
            (hsPkgs.streaming-binary)
            (hsPkgs.streaming-bytestring)
          ];
        };
      };
    };
  }