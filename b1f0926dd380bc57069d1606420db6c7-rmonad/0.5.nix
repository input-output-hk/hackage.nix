{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "rmonad";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-9 Ganesh Sittampalam, 2008 Peter Gavin";
        maintainer = "Ganesh Sittampalam <ganesh@earth.li>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Restricted monad library";
        description = "A library for restricted monads based on associated datatypes.\nThis allows datatypes such as Set to be made into monads.\nUsers can either use the NoImplicitPrelude extension and use\nControl.RMonad directly, or use Control.RMonad.AsMonad with\nthe embed and unEmbed combinators to use the normal Prelude\nmonad operations.\nThe 0.4 release mainly adds support for monad transformers.\nThe dependency on the transformers package may be replaced\nby mtl if it seems likely that mtl will stay the standard for\nsome time to come.";
        buildType = "Simple";
      };
      components = {
        rmonad = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
          ];
        };
      };
    }