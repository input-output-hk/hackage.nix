{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "process-streaming";
          version = "0.9.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diaz_carrete@yahoo.com";
        author = "Daniel Díaz Carrete";
        homepage = "";
        url = "";
        synopsis = "Streaming interface to system processes.";
        description = "Concurrent, streaming access to the input and outputs of system processes.";
        buildType = "Simple";
      };
      components = {
        "process-streaming" = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.void
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.free
            hsPkgs.kan-extensions
            hsPkgs.profunctors
            hsPkgs.bifunctors
            hsPkgs.pipes
            hsPkgs.pipes-safe
            hsPkgs.pipes-parse
            hsPkgs.pipes-concurrency
            hsPkgs.pipes-bytestring
            hsPkgs.pipes-text
            hsPkgs.pipes-transduce
            hsPkgs.conceit
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.void
              hsPkgs.free
              hsPkgs.bifunctors
              hsPkgs.foldl
              hsPkgs.pipes
              hsPkgs.pipes-safe
              hsPkgs.pipes-parse
              hsPkgs.pipes-concurrency
              hsPkgs.pipes-bytestring
              hsPkgs.pipes-text
              hsPkgs.pipes-group
              hsPkgs.pipes-attoparsec
              hsPkgs.pipes-transduce
              hsPkgs.exceptions
              hsPkgs.semigroups
              hsPkgs.containers
              hsPkgs.attoparsec
              hsPkgs.lens-family-core
              hsPkgs.directory
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.process-streaming
            ];
          };
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.void
              hsPkgs.free
              hsPkgs.bifunctors
              hsPkgs.foldl
              hsPkgs.pipes
              hsPkgs.pipes-safe
              hsPkgs.pipes-parse
              hsPkgs.pipes-concurrency
              hsPkgs.pipes-bytestring
              hsPkgs.pipes-text
              hsPkgs.pipes-group
              hsPkgs.pipes-attoparsec
              hsPkgs.pipes-transduce
              hsPkgs.exceptions
              hsPkgs.semigroups
              hsPkgs.containers
              hsPkgs.attoparsec
              hsPkgs.lens-family-core
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.doctest
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.process-streaming
            ];
          };
        };
      };
    }