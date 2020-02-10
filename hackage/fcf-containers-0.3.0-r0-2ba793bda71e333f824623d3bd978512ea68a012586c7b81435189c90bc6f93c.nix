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
      specVersion = "1.24";
      identifier = { name = "fcf-containers"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "gspia (c) 2020-";
      maintainer = "iahogsp@gmail.com";
      author = "gspia";
      homepage = "https://github.com/gspia/fcf-containers";
      url = "";
      synopsis = "Data structures and algorithms for first-class-families";
      description = "Package fcf-containers provides type-level functions and data structures\nthat operate on type-level computations. Specifically, we mimick the\ncontents of containers-package and show how these can be used. Everything is\nbased on the ideas given in the first-class-families -package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."first-class-families" or (buildDepError "first-class-families"))
          ];
        buildable = true;
        };
      exes = {
        "orbits" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."first-class-families" or (buildDepError "first-class-families"))
            ];
          buildable = true;
          };
        "haiku" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."first-class-families" or (buildDepError "first-class-families"))
            ];
          buildable = true;
          };
        };
      tests = {
        "fcf-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."first-class-families" or (buildDepError "first-class-families"))
            (hsPkgs."fcf-containers" or (buildDepError "fcf-containers"))
            ];
          buildable = true;
          };
        "fcf-doctest" = {
          depends = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "8.6") [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            ];
          buildable = if compiler.isGhc && (compiler.version).ge "8.6"
            then true
            else false;
          };
        };
      };
    }