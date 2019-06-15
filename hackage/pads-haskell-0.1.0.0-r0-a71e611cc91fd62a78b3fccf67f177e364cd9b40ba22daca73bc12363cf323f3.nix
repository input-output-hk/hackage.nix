{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "pads-haskell"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2011 Kathleen Fisher & John Launchbury";
      maintainer = "karl@cs.tufts.edu";
      author = "Kathleen Fisher and John Launchbury";
      homepage = "https://github.com/padsproj/pads-haskell#readme";
      url = "";
      synopsis = "PADS data description language for Haskell.";
      description = "Please see the README on Github at <https://github.com/padsproj/pads-haskell#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HUnit)
          (hsPkgs.base)
          (hsPkgs.byteorder)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.mainland-pretty)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.parsec)
          (hsPkgs.random)
          (hsPkgs.regex-posix)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
          (hsPkgs.time)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.byteorder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.ghc-prim)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mainland-pretty)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.pads-haskell)
            (hsPkgs.parsec)
            (hsPkgs.random)
            (hsPkgs.regex-posix)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.th-lift)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        "extended" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.byteorder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.ghc-prim)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mainland-pretty)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.pads-haskell)
            (hsPkgs.parsec)
            (hsPkgs.random)
            (hsPkgs.regex-posix)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.th-lift)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        "gen" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.byteorder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.ghc-prim)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mainland-pretty)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.pads-haskell)
            (hsPkgs.parsec)
            (hsPkgs.random)
            (hsPkgs.regex-posix)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.th-lift)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }