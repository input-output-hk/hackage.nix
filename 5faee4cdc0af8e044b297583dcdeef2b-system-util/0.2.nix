{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "system-util";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jmacristovao@gmail.com";
        author = "João Cristóvão";
        homepage = "https://github.com/jcristovao/system-util";
        url = "";
        synopsis = "Various system utils lifted to EitherT";
        description = "Various system functions lifted to EitherT.\nProvides higher level functions to those in system-lifted.";
        buildType = "Simple";
      };
      components = {
        system-util = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.template-haskell
            hsPkgs.either
            hsPkgs.semigroups
            hsPkgs.unix
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.system-lifted
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.template-haskell
              hsPkgs.either
              hsPkgs.semigroups
              hsPkgs.quickcheck-instances
              hsPkgs.hspec
              hsPkgs.directory
              hsPkgs.easy-data
              hsPkgs.system-lifted
              hsPkgs.filepath
            ];
          };
        };
      };
    }