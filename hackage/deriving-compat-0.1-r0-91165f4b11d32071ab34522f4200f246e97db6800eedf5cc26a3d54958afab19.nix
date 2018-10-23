{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "deriving-compat";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@ku.edu>";
      author = "Ryan Scott";
      homepage = "https://github.com/haskell-compat/deriving-compat";
      url = "";
      synopsis = "Backports of GHC deriving extensions";
      description = "Provides Template Haskell functions that mimic deriving\nextensions that were introduced or modified in recent versions\nof GHC. Currently, the following extensions are covered:\n\n* @DeriveFoldable@, which was changed in GHC 7.12 to allow folding\nover data types with existential constraints.";
      buildType = "Simple";
    };
    components = {
      "deriving-compat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.deriving-compat)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }