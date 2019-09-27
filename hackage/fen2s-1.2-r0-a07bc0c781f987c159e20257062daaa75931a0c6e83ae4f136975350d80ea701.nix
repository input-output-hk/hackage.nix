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
      specVersion = "1.8.0.2";
      identifier = { name = "fen2s"; version = "1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Converting a chess position from FEN notation to text";
      description = "This package implements a simple utility to read in a chess position\ndescribed in FEN notation and print it using Unicode characters.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."opentheory-unicode" or (buildDepError "opentheory-unicode"))
          (hsPkgs."api-opentheory-unicode" or (buildDepError "api-opentheory-unicode"))
          ];
        buildable = true;
        };
      exes = {
        "fen2s" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."opentheory-unicode" or (buildDepError "opentheory-unicode"))
            (hsPkgs."api-opentheory-unicode" or (buildDepError "api-opentheory-unicode"))
            ];
          buildable = true;
          };
        };
      tests = {
        "fen2s-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."opentheory-unicode" or (buildDepError "opentheory-unicode"))
            (hsPkgs."api-opentheory-unicode" or (buildDepError "api-opentheory-unicode"))
            ];
          buildable = true;
          };
        };
      };
    }