{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "copilot-cbmc";
          version = "0.11";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "leepike@galois.com";
        author = "Lee Pike\n, Sebastian Niller\n, Nis Nordby Wegmann";
        homepage = "";
        url = "";
        synopsis = "Copilot interface to a C model-checker.";
        description = "Depends on CBMC <http://www.cprover.org/cbmc/>.  Generates a driver to prove the Atom and SBV backends generate equivalent code.";
        buildType = "Custom";
      };
      components = {
        copilot-cbmc = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.copilot-core
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.pretty
            hsPkgs.copilot-sbv
            hsPkgs.copilot-c99
          ];
        };
      };
    }