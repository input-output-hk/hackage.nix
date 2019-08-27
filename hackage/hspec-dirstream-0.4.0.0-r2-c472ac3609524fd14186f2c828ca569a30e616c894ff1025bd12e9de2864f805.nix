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
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "hspec-dirstream"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/hspec-dirstream";
      url = "";
      synopsis = "Helper functions to simplify adding integration tests.";
      description = "This package uses [hspec](http://hackage.haskell.org/package/hspec) and [dirstream](http://hackage.haskell.org/package/dirstream) to provide easy-to-use functions for integration tests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."dirstream" or (buildDepError "dirstream"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      tests = {
        "hspec-dirstream-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec-dirstream" or (buildDepError "hspec-dirstream"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        };
      };
    }