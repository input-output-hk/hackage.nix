{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "purescript-bundle-fast";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mutantlemon@gmail.com";
        author = "Bit Connor";
        homepage = "https://github.com/bitc/purescript-bundle-fast";
        url = "";
        synopsis = "A fast alternative to Purescript's `psc-bundle` to be used during development";
        description = "See README.md";
        buildType = "Simple";
      };
      components = {
        exes = {
          "psc-bundle-fast" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.optparse-applicative
              hsPkgs.text
              hsPkgs.vector
            ];
          };
        };
      };
    }