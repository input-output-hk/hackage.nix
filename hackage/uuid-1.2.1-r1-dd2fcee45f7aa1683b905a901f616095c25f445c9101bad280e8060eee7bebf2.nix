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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "uuid"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2009 Antoine Latter";
      maintainer = "aslatter@gmail.com";
      author = "Antoine Latter";
      homepage = "http://projects.haskell.org/uuid/";
      url = "";
      synopsis = "For creating, comparing, parsing and printing Universally Unique Identifiers";
      description = "This library is useful for creating, comparing, parsing and\nprinting Universally Unique Identifiers.\nSee <http://en.wikipedia.org/wiki/UUID> for the general idea.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."Crypto" or (buildDepError "Crypto"))
          (hsPkgs."maccatcher" or (buildDepError "maccatcher"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      exes = {
        "benchuuid" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Crypto" or (buildDepError "Crypto"))
            (hsPkgs."maccatcher" or (buildDepError "maccatcher"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."mersenne-random-pure64" or (buildDepError "mersenne-random-pure64"))
            ];
          };
        "testuuid" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Crypto" or (buildDepError "Crypto"))
            (hsPkgs."maccatcher" or (buildDepError "maccatcher"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }