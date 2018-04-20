{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "cabal-bounds";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "daniel.trstenjak@gmail.com";
        author = "Daniel Trstenjak";
        homepage = "";
        url = "";
        synopsis = "A command line program for managing the bounds/versions of the dependencies in a cabal file.";
        description = "A command line program for managing the bounds/versions of the dependencies in a cabal file.";
        buildType = "Simple";
      };
      components = {
        cabal-bounds = {
          depends  = [
            hsPkgs.base
            hsPkgs.cmdargs
            hsPkgs.lens
            hsPkgs.strict
            hsPkgs.Cabal
          ];
        };
        exes = {
          cabal-bounds = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.lens
              hsPkgs.strict
              hsPkgs.Cabal
            ];
          };
        };
        tests = {
          cabal-bounds-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.lens
              hsPkgs.strict
              hsPkgs.Cabal
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.filepath
              hsPkgs.cabal-bounds
            ];
          };
        };
      };
    }