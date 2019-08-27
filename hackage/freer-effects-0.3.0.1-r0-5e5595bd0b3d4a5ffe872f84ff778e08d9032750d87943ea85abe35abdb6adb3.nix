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
    flags = { pedantic = false; test-hlint = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "freer-effects"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Allele Dev; 2017 Ixperta Solutions s.r.o.";
      maintainer = "ixcom-core@ixperta.com";
      author = "Allele Dev, Ixcom Core Team, and other contributors";
      homepage = "https://github.com/IxpertaSolutions/freer-effects";
      url = "";
      synopsis = "Implementation of effect system for Haskell.";
      description = "Implementation of effect system for Haskell, which is based on the work of\nOleg Kiselyov et al.:\n\n* <http://okmij.org/ftp/Haskell/extensible/more.pdf Freer Monads, More Extensible Effects>\n\n* <http://okmij.org/ftp/Haskell/zseq.pdf Reflection without Remorse>\n\n* <http://okmij.org/ftp/Haskell/extensible/exteff.pdf Extensible Effects>\n\nThe key features are:\n\n* An efficient effect system for Haskell - as a library!\n\n* Reimplementations of several common Haskell monad transformers as effects.\n\n* Core components for defining your own Effects.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      exes = {
        "freer-examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."freer-effects" or (buildDepError "freer-effects"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."freer-effects" or (buildDepError "freer-effects"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        "hlint" = {
          depends = (pkgs.lib).optionals (flags.test-hlint) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          };
        };
      benchmarks = {
        "core" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."freer-effects" or (buildDepError "freer-effects"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      };
    }