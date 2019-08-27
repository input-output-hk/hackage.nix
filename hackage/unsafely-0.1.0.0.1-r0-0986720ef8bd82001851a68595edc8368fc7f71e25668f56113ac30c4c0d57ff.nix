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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "unsafely"; version = "0.1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 (c) Hiromi ISHII";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "http://github.com/konn/unsafely";
      url = "";
      synopsis = "Flexible access control for unsafe operations and instances";
      description = "This module aims at providing simple interface to control the acccess for /unsafe/\noperations and instance.\nThe motivation of this package is somewhat similar to\n@<https://ghc.haskell.org/trac/ghc/ticket/7642 NullaryTypeClasses>@ extension,\nbut permits more flexible access control.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          ];
        };
      exes = {
        "semigroup" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."unsafely" or (buildDepError "unsafely"))
            ];
          };
        "safe-unsafe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."unsafely" or (buildDepError "unsafely"))
            ];
          };
        };
      };
    }