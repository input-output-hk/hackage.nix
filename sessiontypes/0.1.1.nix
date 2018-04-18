{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sessiontypes";
          version = "0.1.1";
        };
        license = "GPL-3.0-only";
        copyright = "2017 Ferdinand van Walree";
        maintainer = "Ferdinand van Walree";
        author = "Ferdinand van Walree";
        homepage = "https://github.com/Ferdinand-vW/sessiontypes#readme";
        url = "";
        synopsis = "Session types library";
        description = "This packages provides a deep embedded domain-specific language for writing session typed program.\nA session typed program is a program annotated with session types. A session type describes a communication protocol at the type-level.\nThe motivation for doing so is that it gives you a static guarantee that a program correctly implements a protocol.\nIt may even guarantee that no deadlocking can occur.";
        buildType = "Simple";
      };
      components = {
        sessiontypes = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.diagrams-lib
            hsPkgs.diagrams-svg
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
        exes = {
          test-visualizer = {
            depends  = [
              hsPkgs.base
              hsPkgs.sessiontypes
            ];
          };
        };
        tests = {
          sessiontypes-debug = {
            depends  = [
              hsPkgs.base
              hsPkgs.sessiontypes
              hsPkgs.hspec
              hsPkgs.directory
            ];
          };
          sessiontypes-normalize = {
            depends  = [
              hsPkgs.base
              hsPkgs.sessiontypes
              hsPkgs.hspec
              hsPkgs.directory
            ];
          };
          sessiontypes-interactive = {
            depends  = [
              hsPkgs.base
              hsPkgs.sessiontypes
              hsPkgs.hspec
              hsPkgs.directory
              hsPkgs.exceptions
            ];
          };
        };
      };
    }