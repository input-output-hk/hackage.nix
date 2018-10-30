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
      specVersion = "2.2";
      identifier = {
        name = "streaming-base64";
        version = "0.1.0.0";
      };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "koral@mailoo.org";
      author = "koral";
      homepage = "";
      url = "";
      synopsis = "Streaming conversion from/to base64";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe-exceptions)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.streaming-base64)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }