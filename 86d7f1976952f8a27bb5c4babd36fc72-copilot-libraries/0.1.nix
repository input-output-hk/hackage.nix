{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "copilot-libraries";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "niswegmann@gmail.com";
        author = "Lee Pike, Robin Morisset, Alwyn Goodloe, Sebastian Niller,\nNis Nordby Wegmann";
        homepage = "";
        url = "";
        synopsis = "A Haskell-embedded DSL for monitoring hard real-time\ndistributed systems.";
        description = "Libraries for the Copilot language";
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