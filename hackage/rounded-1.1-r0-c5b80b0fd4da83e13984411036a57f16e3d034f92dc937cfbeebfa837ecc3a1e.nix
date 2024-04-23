{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "rounded"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2014 Edward A. Kmett, Daniel G. Peebles;\nCopyright (C) 2013-2019 Claude Heiland-Allen";
      maintainer = "Claude Heiland-Allen <claude@mathr.co.uk>";
      author = "Edward A. Kmett, Daniel G. Peebles, Claude Heiland-Allen";
      homepage = "https://github.com/ekmett/rounded";
      url = "";
      synopsis = "Correctly-rounded arbitrary-precision floating-point arithmetic";
      description = "This package provides numeric instances for MPFR that use\n\\\"Implicit Configurations\\\" from\n<http://www.cs.rutgers.edu/~ccshan/prepose/prepose.pdf>\nto choose a 'Rounding' and 'Precision'. For those that do not want to\nuse reflection, explicit instances are provided for common precisions\nand for the built-in rounding modes.\n\nThis package should work correctly with GHC 7.10.1 or later.\n\n>>> import Numeric.Rounded\n>>> :set -XDataKinds\n>>> exp pi :: Rounded TowardZero 512\n23.140692632779269005729086367948547380266106242600211993445046409524342350690452783516971997067549219675952704801087773144428044414693835844717445879609842\n\nrounded version 1.x is for MPFR version 4.0 and above.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."hgmp" or (errorHandler.buildDepError "hgmp"))
          (hsPkgs."long-double" or (errorHandler.buildDepError "long-double"))
        ];
        libs = [
          (pkgs."mpfr" or (errorHandler.sysDepError "mpfr"))
          (pkgs."gmp" or (errorHandler.sysDepError "gmp"))
        ];
        pkgconfig = [
          (pkgconfPkgs."mpfr" or (errorHandler.pkgConfDepError "mpfr"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "rounded-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."long-double" or (errorHandler.buildDepError "long-double"))
            (hsPkgs."rounded" or (errorHandler.buildDepError "rounded"))
          ];
          buildable = true;
        };
      };
    };
  }