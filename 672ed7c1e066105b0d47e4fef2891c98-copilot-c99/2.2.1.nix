{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "copilot-c99";
          version = "2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "leepike@galois.com";
        author = "Lee Pike\n, Robin Morisset\n, Alwyn Goodloe\n, Sebastian Niller\n, Nis Nordby Wegmann";
        homepage = "";
        url = "";
        synopsis = "A compiler for Copilot targeting C99.";
        description = "This package is a back-end from Copilot to the Atom DSL.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language (DSL) in\nHaskell that compiles into embedded C.  Copilot contains an interpreter,\nmultiple back-end compilers, and other verification tools.  A tutorial, bug\nreports, and todos are available at\n<https://github.com/leepike/copilot-discussion>.\n\nExamples are available at\n<https://github.com/leepike/Copilot/tree/master/Examples>.";
        buildType = "Simple";
      };
      components = {
        copilot-c99 = {
          depends  = [
            hsPkgs.atom
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.copilot-core
            hsPkgs.csv
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.pretty
            hsPkgs.random
            hsPkgs.text
            hsPkgs.QuickCheck
            hsPkgs.vector
          ];
        };
        exes = {
          copilot-c99-qc = {
            depends  = [
              hsPkgs.atom
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.csv
              hsPkgs.containers
              hsPkgs.copilot-core
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.pretty
              hsPkgs.random
              hsPkgs.text
              hsPkgs.QuickCheck
              hsPkgs.vector
            ];
          };
        };
      };
    }