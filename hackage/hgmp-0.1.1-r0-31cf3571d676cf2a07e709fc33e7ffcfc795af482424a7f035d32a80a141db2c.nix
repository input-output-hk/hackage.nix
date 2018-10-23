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
        name = "hgmp";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016,2017 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/hgmp";
      url = "";
      synopsis = "Haskell interface to GMP";
      description = "Types and instances, and marshalling between Integer and\nRational and the corresponding GMP types, along with raw\nforeign imports of GMP functions.  Allows FFI to GMP code\n(whether in GMP itself or in third-party code that uses\nGMP).\n\nSupports only GHC with integer-gmp, this might change if\nthere's any demand.";
      buildType = "Simple";
    };
    components = {
      "hgmp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.integer-gmp)
          (hsPkgs.ghc-prim)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "Main" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hgmp)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }