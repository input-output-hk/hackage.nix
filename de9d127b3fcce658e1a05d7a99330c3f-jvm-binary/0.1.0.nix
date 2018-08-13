{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "jvm-binary";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Christian Gram Kalhauge <kalhauge@cs.ucla.edu>";
      author = "Christian Gram Kalhauge";
      homepage = "https://github.com/ucla-pls/jvm-binary#readme";
      url = "";
      synopsis = "A library for reading Java class-files";
      description = "A library for reading Java class-files.";
      buildType = "Simple";
    };
    components = {
      "jvm-binary" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.deepseq)
          (hsPkgs.deriving-compat)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "jvm-binary-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.deepseq)
            (hsPkgs.deriving-compat)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.generic-random)
            (hsPkgs.hspec-expectations-pretty-diff)
            (hsPkgs.jvm-binary)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "jvm-binary-benchmarks" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.deepseq)
            (hsPkgs.deriving-compat)
            (hsPkgs.jvm-binary)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }