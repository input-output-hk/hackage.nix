{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "rounded"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (C) 2012-2014 Edward A. Kmett, Daniel G. Peebles;\nCopyright (C) 2013-2018 Claude Heiland-Allen";
      maintainer = "Claude Heiland-Allen <claude@mathr.co.uk>";
      author = "Edward A. Kmett, Daniel G. Peebles, Claude Heiland-Allen";
      homepage = "https://github.com/ekmett/rounded";
      url = "";
      synopsis = "Correctly-rounded arbitrary-precision floating-point arithmetic";
      description = "This package provides numeric instances for MPFR that use\n\\\"Implicit Configurations\\\" from\n<http://www.cs.rutgers.edu/~ccshan/prepose/prepose.pdf>\nto choose a 'Rounding' and 'Precision'. For those that do not want to\nuse reflection, explicit instances are provided for common precisions\nand for the built-in rounding modes.\n\nThis package should work correctly with GHC 7.10.1 or later.\n\n>>> import Numeric.Rounded\n>>> :set -XDataKinds\n>>> exp pi :: Rounded TowardZero 512\n23.140692632779269005729086367948547380266106242600211993445046409524342350690452783516971997067549219675952704801087773144428044414693835844717445879609842";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."hgmp" or ((hsPkgs.pkgs-errors).buildDepError "hgmp"))
          (hsPkgs."long-double" or ((hsPkgs.pkgs-errors).buildDepError "long-double"))
          ];
        libs = [
          (pkgs."mpfr" or ((hsPkgs.pkgs-errors).sysDepError "mpfr"))
          (pkgs."gmp" or ((hsPkgs.pkgs-errors).sysDepError "gmp"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "rounded-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."long-double" or ((hsPkgs.pkgs-errors).buildDepError "long-double"))
            (hsPkgs."rounded" or ((hsPkgs.pkgs-errors).buildDepError "rounded"))
            ];
          buildable = true;
          };
        };
      };
    }