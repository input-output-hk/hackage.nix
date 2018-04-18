{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sequent-core";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "maurerl@cs.uoregon.edu";
        author = "Luke Maurer, Paul Downen, Iavor S. Diatchki";
        homepage = "https://github.com/lukemaurer/sequent-core";
        url = "https://github.com/lukemaurer/sequent-core/archive/master.zip";
        synopsis = "Alternative Core language for GHC plugins";
        description = "Sequent Core is a GHC plugin library based on a sequent calculus. It includes:\n\n*   A set of datatypes for a language expressing function code as /interactions/\nbetween values and their contexts (/continuations/)\n*   A library for writing GHC optimizer plugins using the Sequent Core\nlanguage in place of the built-in Core language\n*   Example plugins written using Sequent Core";
        buildType = "Simple";
      };
      components = {
        sequent-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.bytestring
          ];
        };
        exes = {
          DumpExpl = {
            depends  = [
              hsPkgs.base
              hsPkgs.sequent-core
            ];
          };
          SpecConstrExpl = {
            depends  = [
              hsPkgs.base
              hsPkgs.sequent-core
              hsPkgs.containers
            ];
          };
          SimplExpl = {
            depends  = [
              hsPkgs.base
              hsPkgs.sequent-core
              hsPkgs.bytestring
            ];
          };
          CasesExpl = {
            depends  = [
              hsPkgs.base
              hsPkgs.sequent-core
            ];
          };
          SizesExpl = {
            depends  = [
              hsPkgs.base
              hsPkgs.sequent-core
            ];
          };
        };
      };
    }