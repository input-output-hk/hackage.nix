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
    flags = { bytestring_has_itoa_c = true; bytestring_has_builder = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "bytestring-builder"; version = "0.10.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Jasper Van der Jeugt\n(c) 2010-2013 Simon Meier";
      maintainer = "Leon P Smith <leon@melding-monads.com>";
      author = "Simon Meier, Jasper Van der Jeugt";
      homepage = "";
      url = "";
      synopsis = "The new bytestring builder, packaged outside of GHC";
      description = "This is the bytestring builder that is debuting in bytestring-0.10.4.0, which\nshould be shipping with GHC 7.8, probably late in 2013.  This builder has\nseveral nice simplifications and improvements, and more out-of-box\nfunctionality than the older blaze-builder.\n\nNote that this package detects which version of bytestring you are compiling\nagainst,  and if you are compiling against bytestring-0.10.4 or later, will\nbe an empty package.\n\nThis package lets the new interface and implementation be used with most\nolder compilers without upgrading bytestring, which can be rather\nproblematic.  In conjunction with blaze-builder-0.4 or later,  which\noffers an implementation of blaze-builder in terms of bytestring-builder,\nthis should let most people try the new interface and implementation without\ncausing undue compatibility problems with packages that depend on\nblaze-builder.\n\nGHC 7.6 did debut an almost identical interface and implementation, but with\nslightly different module names and organization.   Trying to re-export/rename\nthe builder provided with 7.6 did not turn out to be very practical,  because\nthis interface includes new functions that rely on Builder internals,\nwhich are not exported in 7.6.  Furthermore, these module names should be\ndeprecated in 7.10.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }