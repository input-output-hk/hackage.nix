{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nanoAgda";
          version = "0.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "jeanphilippe.bernardy@gmail.com";
        author = "Jean-Philippe Bernardy";
        homepage = "";
        url = "";
        synopsis = "A toy dependently-typed language";
        description = "nanoAgda implements a type-checker for a toy dependently-typed\nlanguage.\nThe goal of the project is to provide a minimal type-checker\nwith dependent types that can be easily fiddled with.";
        buildType = "Simple";
      };
      components = {
        exes = {
          nanoAgda = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.pretty
              hsPkgs.parsec
              hsPkgs.BNFC-meta
              hsPkgs.transformers
              hsPkgs.mtl
            ];
          };
        };
      };
    }