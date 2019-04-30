{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; with-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "grpc-haskell"; version = "0.0.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright 2016 Awake Networks";
      maintainer = "opensource@awakenetworks.com";
      author = "Awake Networks";
      homepage = "https://github.com/awakenetworks/gRPC-haskell";
      url = "";
      synopsis = "Haskell implementation of gRPC layered on shared C library.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.proto3-suite)
          (hsPkgs.proto3-wire)
          (hsPkgs.grpc-haskell-core)
          (hsPkgs.async)
          (hsPkgs.managed)
          ];
        };
      exes = {
        "hellos-server" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.grpc-haskell)
            (hsPkgs.grpc-haskell-core)
            (hsPkgs.proto3-suite)
            (hsPkgs.proto3-wire)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        "hellos-client" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.grpc-haskell)
            (hsPkgs.grpc-haskell-core)
            (hsPkgs.proto3-suite)
            (hsPkgs.proto3-wire)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        "echo-server" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.grpc-haskell)
            (hsPkgs.grpc-haskell-core)
            (hsPkgs.optparse-generic)
            (hsPkgs.proto3-suite)
            (hsPkgs.proto3-wire)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        "arithmetic-server" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.grpc-haskell)
            (hsPkgs.grpc-haskell-core)
            (hsPkgs.optparse-generic)
            (hsPkgs.proto3-suite)
            (hsPkgs.proto3-wire)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        "arithmetic-client" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.grpc-haskell)
            (hsPkgs.grpc-haskell-core)
            (hsPkgs.optparse-generic)
            (hsPkgs.proto3-suite)
            (hsPkgs.proto3-wire)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        "echo-client" = {
          depends = (pkgs.lib).optionals (flags.with-examples) [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.grpc-haskell)
            (hsPkgs.grpc-haskell-core)
            (hsPkgs.optparse-generic)
            (hsPkgs.proto3-suite)
            (hsPkgs.proto3-wire)
            (hsPkgs.text)
            (hsPkgs.random)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.grpc-haskell)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.time)
            (hsPkgs.async)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.containers)
            (hsPkgs.managed)
            (hsPkgs.pipes)
            (hsPkgs.proto3-suite)
            (hsPkgs.transformers)
            (hsPkgs.safe)
            (hsPkgs.clock)
            (hsPkgs.turtle)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.grpc-haskell)
            (hsPkgs.async)
            (hsPkgs.criterion)
            (hsPkgs.proto3-suite)
            (hsPkgs.bytestring)
            (hsPkgs.random)
            ];
          };
        };
      };
    }