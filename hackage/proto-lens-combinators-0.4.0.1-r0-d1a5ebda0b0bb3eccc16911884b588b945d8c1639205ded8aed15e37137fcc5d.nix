{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "proto-lens-combinators"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "zearen+protolens@google.com";
      author = "Zie Weaver";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "Utilities functions to proto-lens.";
      description = "Useful things for working with protos.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.proto-lens-setup or (pkgs.buildPackages.proto-lens-setup))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens-family)
          (hsPkgs.proto-lens)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "combinators_test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.lens-family)
            (hsPkgs.lens-family-core)
            (hsPkgs.proto-lens)
            (hsPkgs.proto-lens-combinators)
            (hsPkgs.proto-lens-runtime)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            ];
          };
        };
      };
    }