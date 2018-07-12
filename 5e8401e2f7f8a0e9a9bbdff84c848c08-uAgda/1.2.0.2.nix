{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "uAgda";
          version = "1.2.0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "jeanphilippe.bernardy@gmail.com";
        author = "Jean-Philippe Bernardy";
        homepage = "";
        url = "";
        synopsis = "A simplistic dependently-typed language with parametricity.";
        description = "uAgda implements an experimental dependently-typed language\n(and proof assistant by the Curry-Howard isomorphism), extended with support for parametricity.\n\nSee the share/tutorial directory for how to get started.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "uAgda" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.pretty
              hsPkgs.parsec
              hsPkgs.BNFC-meta
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.split
            ];
          };
        };
      };
    }