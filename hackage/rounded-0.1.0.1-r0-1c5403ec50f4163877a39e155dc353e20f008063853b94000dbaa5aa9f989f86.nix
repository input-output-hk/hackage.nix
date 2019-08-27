let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "rounded"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."hgmp" or (buildDepError "hgmp"))
          (hsPkgs."long-double" or (buildDepError "long-double"))
          ];
        libs = [
          (pkgs."mpfr" or (sysDepError "mpfr"))
          (pkgs."gmp" or (sysDepError "gmp"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        };
      tests = {
        "rounded-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."long-double" or (buildDepError "long-double"))
            (hsPkgs."rounded" or (buildDepError "rounded"))
            ];
          };
        };
      };
    }