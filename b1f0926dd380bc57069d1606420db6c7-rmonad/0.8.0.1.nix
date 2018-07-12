{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      warn-as-error = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rmonad";
          version = "0.8.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-9 Ganesh Sittampalam, 2008 Peter Gavin";
        maintainer = "Ganesh Sittampalam <ganesh@earth.li>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Restricted monad library";
        description = "A library for restricted monads based on associated datatypes.\nThis allows datatypes such as Set to be made into monads.\nUsers can either use the NoImplicitPrelude extension and use\nControl.RMonad directly, or use Control.RMonad.AsMonad with\nthe embed and unEmbed combinators to use the normal Prelude\nmonad operations.";
        buildType = "Simple";
      };
      components = {
        "rmonad" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.suitable
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.rmonad
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }