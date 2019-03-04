{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "streaming-base64"; version = "0.1.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "chahine.moreau@gmail.com";
      author = "chahine.moreau@gmail.com";
      homepage = "";
      url = "";
      synopsis = "Streaming conversion from/to base64";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-compat-batteries)
          (hsPkgs.safe-exceptions)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "golden-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat-batteries)
            (hsPkgs.filepath)
            (hsPkgs.streaming-base64)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.streaming-with)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            ];
          };
        };
      };
    }