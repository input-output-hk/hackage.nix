{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cli";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Nicolas DI PRIMA <nicolas@di-prima.fr>";
        maintainer = "Nicolas DI PRIMA <nicolas@di-prima.fr>\nVincent Hanquez <vincent@snarc.org>";
        author = "Nicolas DI PRIMA <nicolas@di-prima.fr>";
        homepage = "https://github.com/NicolasDP/hs-cli";
        url = "";
        synopsis = "Simple Command Line Interface Library";
        description = "This package provides a simple Command Line Library";
        buildType = "Simple";
      };
      components = {
        cli = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        exes = {
          Example = {
            depends  = pkgs.lib.optionals _flags.executable [
              hsPkgs.base
              hsPkgs.cli
              hsPkgs.directory
            ];
          };
        };
      };
    }