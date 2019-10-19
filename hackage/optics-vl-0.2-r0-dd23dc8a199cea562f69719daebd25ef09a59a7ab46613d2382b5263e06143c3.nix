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
      identifier = { name = "optics-vl"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "optics@well-typed.com";
      author = "Andrzej Rybczak";
      homepage = "";
      url = "";
      synopsis = "Utilities for compatibility with van Laarhoven optics";
      description = "This package is part of the @<https://hackage.haskell.org/package/optics optics>@\npackage family.  It provides utilities for converting between the 'Optic' type\ndefined by @<https://hackage.haskell.org/package/optics optics>@ and the van\nLaarhoven representations of optics that require definitions outside of @base@\n(in particular isomorphisms and prisms).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."indexed-profunctors" or (buildDepError "indexed-profunctors"))
          (hsPkgs."optics-core" or (buildDepError "optics-core"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          ];
        buildable = true;
        };
      };
    }