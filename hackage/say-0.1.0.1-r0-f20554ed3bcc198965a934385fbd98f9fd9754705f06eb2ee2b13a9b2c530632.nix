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
        name = "say";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2016-2018 FP Complete";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/say#readme";
      url = "";
      synopsis = "Send textual messages to a Handle in a thread-friendly way";
      description = "Please see the README and documentation at <https://www.stackage.org/package/say>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "say-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.say)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
          ];
        };
      };
      benchmarks = {
        "say-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.gauge)
            (hsPkgs.say)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
          ];
        };
      };
    };
  }