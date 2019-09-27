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
      specVersion = "1.8";
      identifier = { name = "relation"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2012 Drew Day,\n(C) 2010 Leonel Fonseca";
      maintainer = "Drew Day";
      author = "Leonel Fonseca";
      homepage = "https://www.github.com/d-day/relation/";
      url = "";
      synopsis = "A data structure representing Relations on Sets.";
      description = "A library to model relationships between two objects that are subclasses of\nOrd.\n\nInstead using a Map structure we use a two Maps that allows\nfast searching either by the key element or the value element.\n\nEach of Map is between an element and a set of values.\nThus careful coordination of operations is required.\n\nThis library lacks of extensive testing, formal testing or automated testing.\nAlso in comparison to Data.Set or Data.Map (which provide the underlying\ninfrastructure used) there are some missing methods.\n\nTwo small examples are currently provided.\n\nChanges:\n\n@\n\\ 0.2 -> 0.2.1 2012.06.07.  DD. Added Doctests, Example02. Added \"Text.Groom\" dependency.\n\n\\ 0.1 -> 0.2   2012.06.06.  DD. Translated to English.\n\n\\ 0.1          2009.11.09. LFL. Corrected the definition of delete.\n\n\\ 0.0          2009.11.26. LFL. Construction\n@\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."groom" or (buildDepError "groom"))
          ];
        buildable = true;
        };
      };
    }