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
      specVersion = "1.2";
      identifier = { name = "extensible-data"; version = "0.1.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Sums/products/lists/trees which can be extended in other modules";
      description = "Extensible lists: Add to a list at compile-time in many modules, which\ndo not necessarily know each other, and then collect it into a single\nlist in a module depending on all of them (possibly indirectly).\n\nExtensible products: It is a record in which new fields can be added\nanywhere including in different modules; dependent defaults are\nsupported, so it is still possible to make a value of such a type.\n\nExtensible sums: Type with choices; new choices can be added anywhere\nincluding in other modules (which do not need to know each other). The\noperations on them are also freely extensible in the similar way.\n\nExtensible trees: You can make a tree out of types, and have a value at\neach node. New nodes can be added anywhere if you have access to the\nnode which will become the new node's parent.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-lens" or (buildDepError "data-lens"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        };
      };
    }