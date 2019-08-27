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
    flags = { buildtests = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "takusen-oracle"; version = "0.9.4.1"; };
      license = "BSD-3-Clause";
      copyright = "2003-2009, Alistair Bayley, Oleg Kiselyov, 2013, Pavel Ryzhov";
      maintainer = "paul@paulrz.cz";
      author = "Alistair Bayley, Oleg Kiselyov, Pavel Ryzhov";
      homepage = "https://github.com/paulrzcz/takusen-oracle.git";
      url = "https://github.com/paulrzcz/takusen-oracle.git";
      synopsis = "Database library with left-fold interface for Oracle.";
      description = "Takusen-Oracle is a Oracle access library. Like HSQL and HDBC, we support\narbitrary SQL statements (currently strings, extensible to anything\nthat can be converted to a string).\nIt is based on original Takusen library. It was just upgraded to support\nOracle 11gR2/12c instant client and GHC 7.4.2 and higher.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          ];
        libs = if system.isWindows
          then [ (pkgs."oci" or (sysDepError "oci")) ]
          else [ (pkgs."clntsh" or (sysDepError "clntsh")) ];
        };
      exes = {
        "takusen_tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            ] ++ (pkgs.lib).optional (!(!flags.buildtests)) (hsPkgs."takusen-oracle" or (buildDepError "takusen-oracle"));
          };
        "miniunit_tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      };
    }