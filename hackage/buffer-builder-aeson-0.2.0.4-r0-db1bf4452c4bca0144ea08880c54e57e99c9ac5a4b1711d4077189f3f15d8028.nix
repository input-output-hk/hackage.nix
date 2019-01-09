{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "buffer-builder-aeson"; version = "0.2.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "andy.friesen@gmail.com";
      author = "Andy Friesen";
      homepage = "";
      url = "";
      synopsis = "Serialize Aeson values with Data.BufferBuilder";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.integer-gmp)
          (hsPkgs.buffer-builder)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.scientific)
          (hsPkgs.bytestring)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.buffer-builder-aeson)
            (hsPkgs.buffer-builder)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.QuickCheck)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.scientific)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.text)
            (hsPkgs.hashable)
            (hsPkgs.attoparsec)
            (hsPkgs.aeson)
            ];
          };
        };
      benchmarks = {
        "json-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.buffer-builder)
            (hsPkgs.buffer-builder-aeson)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }