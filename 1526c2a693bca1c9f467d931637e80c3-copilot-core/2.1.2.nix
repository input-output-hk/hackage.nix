{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "copilot-core";
          version = "2.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "leepike@gmail.com";
        author = "Lee Pike, Robin Morisset, Alwyn Goodloe,\nSebastian Niller, Nis Nordbyop Wegmann";
        homepage = "";
        url = "";
        synopsis = "An intermediate representation for Copilot.";
        description = "Intermediate representation for Copilot.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language (DSL) in\nHaskell that compiles into embedded C.  Copilot contains an interpreter,\nmultiple back-end compilers, and other verification tools.  A tutorial, bug\nreports, and todos are available at\n<https://github.com/leepike/copilot-discussion>.\n\nExamples are available at\n<https://github.com/leepike/Copilot/tree/master/Examples>.";
        buildType = "Simple";
      };
      components = {
        "copilot-core" = {
          depends  = [
            hsPkgs.containers
            hsPkgs.base
            hsPkgs.pretty
            hsPkgs.random
            hsPkgs.pretty-ncols
            hsPkgs.mtl
            hsPkgs.dlist
          ];
        };
      };
    }