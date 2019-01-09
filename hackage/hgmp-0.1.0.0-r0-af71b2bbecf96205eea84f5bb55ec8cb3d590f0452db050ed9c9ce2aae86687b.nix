{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hgmp"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/hgmp";
      url = "";
      synopsis = "Haskell interface to GMP";
      description = "Currently, types and instances, and marshalling between\nInteger and Rational and the corresponding GMP types.\nThat is, enough to allow FFI to GMP code (whether in GMP\nitself or in third-party code that uses GMP).\n\nSupports only GHC with integer-gmp, this might change if\nthere's any demand.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.integer-gmp) (hsPkgs.ghc-prim) ];
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      tests = {
        "Main" = {
          depends = [ (hsPkgs.base) (hsPkgs.hgmp) (hsPkgs.QuickCheck) ];
          };
        };
      };
    }