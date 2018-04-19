{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "show";
          version = "0.4.1.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Lambdabot developers";
        author = "Lambdabot devs, Twan van Laarhoven <twanvl@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "'Show' instances for Lambdabot";
        description = "This package provides ShowQ, ShowFun, and SimpleReflect.\n\nShowFun gives us Typeable instances for neutering IO expressions.\n\nShowQ adds SmallCheck & QuickCheck support.\n\nAnd SimpleReflect allows us to literally see how functions 'expand',\nthrough appropriate Show magic. See <http://twan.home.fmf.nl/blog/haskell/simple-reflection-of-expressions.details>.";
        buildType = "Simple";
      };
      components = {
        show = {
          depends  = [
            hsPkgs.random
            hsPkgs.QuickCheck
            hsPkgs.smallcheck
          ] ++ (if _flags.base4
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ]);
        };
      };
    }