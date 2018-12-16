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
        name = "hnormalise";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Andy Georges";
      maintainer = "itkovian@gmail.com";
      author = "Andy Georges";
      homepage = "https://github.com/itkovian/hnormalise#readme";
      url = "";
      synopsis = "Log message normalisation tool producing structured JSON messages";
      description = "Log message normalisation tool producing structured JSON messages";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-iso8601)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.ip)
          (hsPkgs.permute)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "hnormalise" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hnormalise)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-iso8601)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.ip)
            (hsPkgs.optparse-applicative)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.word8)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "hnormalise-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-iso8601)
            (hsPkgs.conduit-extra)
            (hsPkgs.hnormalise)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec-attoparsec)
            (hsPkgs.ip)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
      benchmarks = {
        "hnormalise-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.criterion)
            (hsPkgs.hnormalise)
            (hsPkgs.random)
            (hsPkgs.text)
          ];
        };
      };
    };
  }