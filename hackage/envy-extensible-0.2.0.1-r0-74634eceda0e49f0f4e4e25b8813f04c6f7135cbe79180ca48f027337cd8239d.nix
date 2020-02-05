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
      specVersion = "2.2";
      identifier = { name = "envy-extensible"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 IIJ Innovation Institute, Inc.";
      maintainer = "yuji-yamamoto@iij.ad.jp";
      author = "IIJ Innovation Institute, Inc.";
      homepage = "https://github.com/igrep/envy-extensible#readme";
      url = "";
      synopsis = "Provides FromEnv in envy instance for Record of extensible.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."extensible" or (buildDepError "extensible"))
          (hsPkgs."envy" or (buildDepError "envy"))
          ];
        buildable = true;
        };
      tests = {
        "envy-extensible-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."extensible" or (buildDepError "extensible"))
            (hsPkgs."envy" or (buildDepError "envy"))
            (hsPkgs."envy-extensible" or (buildDepError "envy-extensible"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."main-tester" or (buildDepError "main-tester"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        "envy-extensible-doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."extensible" or (buildDepError "extensible"))
            (hsPkgs."envy" or (buildDepError "envy"))
            (hsPkgs."envy-extensible" or (buildDepError "envy-extensible"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }