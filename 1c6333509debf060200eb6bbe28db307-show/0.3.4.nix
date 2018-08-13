{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      base4ornewer = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "show";
        version = "0.3.4";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Lambdabot developers";
      author = "Lambdabot devs, Twan van Laarhoven <twanvl@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "'Show' instances for Lambdabot";
      description = "This package provides ShowQ, ShowFun, and SimpleReflect.\n\nShowFun gives a Typeable-dependent instance for showing functions as their type. ShowIO does the same for IO actions.\n\nShowQ adds SmallCheck & QuickCheck support.\n\nAnd SimpleReflect allows us to literally see how functions 'expand',\nthrough appropriate Show magic. See <http://twan.home.fmf.nl/blog/haskell/simple-reflection-of-expressions.details>.";
      buildType = "Simple";
    };
    components = {
      "show" = {
        depends  = [
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
          (hsPkgs.smallcheck)
        ] ++ (if _flags.base4ornewer
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }