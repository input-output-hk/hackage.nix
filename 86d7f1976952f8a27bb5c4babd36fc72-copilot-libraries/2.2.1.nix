{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "copilot-libraries";
          version = "2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "leepike@gmail.com";
        author = "Lee Pike, Robin Morisset, Alwyn Goodloe, Sebastian Niller,\nNis Nordby Wegmann";
        homepage = "https://github.com/Copilot-Language/copilot-libraries";
        url = "";
        synopsis = "Libraries for the Copilot language.";
        description = "Libraries for the Copilot language.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language (DSL) in\nHaskell that compiles into embedded C.  Copilot contains an interpreter,\nmultiple back-end compilers, and other verification tools.  A tutorial, bug\nreports, and todos are available at\n<https://github.com/leepike/copilot-discussion>.\n\nExamples are available at\n<https://github.com/Copilot-Language/Copilot/tree/master/Examples>.";
        buildType = "Simple";
      };
      components = {
        copilot-libraries = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.copilot-language
            hsPkgs.parsec
            hsPkgs.mtl
          ];
        };
      };
    }