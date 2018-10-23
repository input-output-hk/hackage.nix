{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "proto-lens-combinators";
        version = "0.1.0.8";
      };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "zearen+protolens@google.com";
      author = "Zie Weaver";
      homepage = "https://github.com/google/proto-lens";
      url = "";
      synopsis = "Utilities functions to proto-lens.";
      description = "Useful things for working with protos.";
      buildType = "Custom";
    };
    components = {
      "proto-lens-combinators" = {
        depends  = [
          (hsPkgs.proto-lens)
          (hsPkgs.proto-lens-protoc)
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.lens-family)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "combinators_test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.lens-family)
            (hsPkgs.lens-family-core)
            (hsPkgs.proto-lens)
            (hsPkgs.proto-lens-combinators)
            (hsPkgs.proto-lens-protoc)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }