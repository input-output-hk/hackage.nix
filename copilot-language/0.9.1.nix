{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "copilot-language";
          version = "0.9.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "leepike@gmail.com";
        author = "Lee Pike, Robin Morisset, Alwyn Goodloe, Sebastian Niller,\nNis Nordby Wegmann";
        homepage = "";
        url = "";
        synopsis = "A Haskell-embedded DSL for monitoring hard real-time\ndistributed systems.";
        description = "The concrete syntax for Copilot.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language (DSL) in\nHaskell that compiles into embedded C.  Copilot contains an interpreter,\nmultiple back-end compilers, and other verification tools.  A tutorial, bug\nreports, and todos are available at\n<https://github.com/niswegmann/copilot-discussion>.\n\nExamples are available at\n<https://github.com/leepike/Copilot/tree/master/Examples>.";
        buildType = "Simple";
      };
      components = {
        copilot-language = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-reify
            hsPkgs.mtl
            hsPkgs.ghc-prim
            hsPkgs.copilot-core
          ];
        };
      };
    }