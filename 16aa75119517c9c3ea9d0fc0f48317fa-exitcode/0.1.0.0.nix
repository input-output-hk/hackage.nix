{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exitcode";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2017 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
        maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
        author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
        homepage = "https://github.com/qfpl/exitcode";
        url = "";
        synopsis = "Monad transformer for exit codes";
        description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nMonad transformer for exit codes";
        buildType = "Simple";
      };
      components = {
        "exitcode" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.transformers
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.checkers
              hsPkgs.exitcode
              hsPkgs.lens
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.transformers
            ];
          };
        };
      };
    }