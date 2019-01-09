{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "freq"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "dcartwright@layer3com.com";
      author = "Daniel Cartwright";
      homepage = "https://github.com/chessai/freq";
      url = "";
      synopsis = "Are you ready to get freaky?";
      description = "This library provides a way to train a model that predicts\nthe \"randomness\" of an input ByteString.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.primitive)
          ];
        };
      exes = {
        "freq-train" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.freq)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.freq)
            (hsPkgs.hedgehog)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.freq)
            (hsPkgs.gauge)
            ];
          };
        };
      };
    }