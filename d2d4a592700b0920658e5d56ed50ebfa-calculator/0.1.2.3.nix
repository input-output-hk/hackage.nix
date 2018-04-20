{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "calculator";
          version = "0.1.2.3";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "sumit.sahrawat.apm13@itbhu.ac.in";
        author = "Sumit Sahrawat";
        homepage = "https://github.com/sumitsahrawat/calculator";
        url = "";
        synopsis = "A calculator that operates on string inputs";
        description = "A calculator repl that processes mathematical expressions.\nDoes basic arithmetic, and provides pre-defined basic mathematical functions.\nAims to provide variable bindings and function bindings in the future.";
        buildType = "Simple";
      };
      components = {
        exes = {
          calculator = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.haskeline
              hsPkgs.parsec
            ];
          };
        };
        tests = {
          model-test-arithmetic = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.parsec
            ];
          };
        };
      };
    }