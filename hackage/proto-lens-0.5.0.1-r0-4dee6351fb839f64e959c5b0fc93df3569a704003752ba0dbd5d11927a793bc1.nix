{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "proto-lens"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "proto-lens@googlegroups.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "A lens-based implementation of protocol buffers in Haskell.";
      description = "The proto-lens library provides an API for protocol buffers using modern Haskell language and library patterns.  Specifically, it provides:\n\n* Composable field accessors via lenses\n\n* Simple field name resolution/overloading via type-level literals\n\n* Type-safe reflection and encoding/decoding of messages via GADTs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.lens-family)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.primitive)
          (hsPkgs.profunctors)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.void)
          ];
        };
      tests = {
        "growing_test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.proto-lens)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.vector)
            ];
          };
        "parser_test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.proto-lens)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        };
      };
    }