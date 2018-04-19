{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "copilot-sbv";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "leepike@galois.com";
        author = "Lee Pike\n, Robin Morisset\n, Alwyn Goodloe\n, Sebastian Niller\n, Nis Nordby Wegmann";
        homepage = "";
        url = "";
        synopsis = "A compiler for CoPilot targeting SBV.";
        description = "Blah blah blah...";
        buildType = "Simple";
      };
      components = {
        copilot-sbv = {
          depends  = [
            hsPkgs.sbv
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.copilot-core
            hsPkgs.pretty
            hsPkgs.filepath
          ];
        };
      };
    }