{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "show";
          version = "0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Lambdabot developers";
        author = "Lambdabot devs, Twan van Laarhoven <twanvl@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "'Show' instances for Lambdabot";
        description = "This package provides ShowQ, ShowFun, and SimpleReflect.\n\nShowFun gives us Typeable instances for neutring IO expressions.\n\nShowQ adds SmallCheck & QuickCheck support.\n\nAnd SimpleReflect allows us to literally see how functions 'expand',\nthrough appropriate Show magic. See <http://twan.home.fmf.nl/blog/haskell/simple-reflection-of-expressions.details>.";
        buildType = "Simple";
      };
      components = {
        show = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.QuickCheck
            hsPkgs.smallcheck
          ];
        };
      };
    }