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
        name = "jvm-binary";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Christian Gram Kalhauge";
      author = "";
      homepage = "https://github.com/kalhauge/jvm-binary#readme";
      url = "";
      synopsis = "A library for reading Java class-files";
      description = "A library for reading Java class-files";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "jvm-binary-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.jvm-binary)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "jvm-binary-benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.jvm-binary)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }