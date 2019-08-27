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
      identifier = { name = "vinyl-vectors"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2015 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "http://github.com/andrewthad/vinyl-vectors";
      url = "";
      synopsis = "Vectors for vinyl vectors";
      description = "This library provides vectors of vinyl records stored\nas a structure of arrays. This vectors types provided\nimplement the generic vector interface and can be\nused with any library that accepts a generic vector\ntype.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      exes = {
        "sorting" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."vinyl-vectors" or (buildDepError "vinyl-vectors"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            ];
          };
        };
      };
    }