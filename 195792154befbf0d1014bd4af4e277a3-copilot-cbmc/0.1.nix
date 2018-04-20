{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "copilot-cbmc";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "leepike@galois.com";
        author = "Lee Pike\n, Robin Morisset\n, Alwyn Goodloe\n, Sebastian Niller\n, Nis Nordby Wegmann";
        homepage = "";
        url = "";
        synopsis = ".";
        description = ".";
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