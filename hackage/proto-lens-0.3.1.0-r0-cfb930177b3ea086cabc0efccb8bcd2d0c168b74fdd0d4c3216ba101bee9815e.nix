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
        name = "proto-lens";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "proto-lens@googlegroups.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "A lens-based implementation of protocol buffers in Haskell.";
      description = "The proto-lens library provides to protocol buffers using modern Haskell language and library patterns.  Specifically, it provides:\n\n* Composable field accessors via lenses\n\n* Simple field name resolution/overloading via type-level literals\n\n* Type-safe reflection and encoding/decoding of messages via GADTs";
      buildType = "Simple";
    };
    components = {
      "proto-lens" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.lens-family)
          (hsPkgs.lens-labels)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.void)
        ];
      };
    };
  }