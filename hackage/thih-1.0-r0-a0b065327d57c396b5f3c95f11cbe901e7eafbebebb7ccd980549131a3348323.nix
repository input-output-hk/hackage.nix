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
      identifier = { name = "thih"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Mark P Jones <mpj@cse.ogi.edu>";
      homepage = "http://web.cecs.pdx.edu/~mpj/thih/";
      url = "";
      synopsis = "Typing Haskell In Haskell";
      description = "Haskell benefits from a sophisticated type system, but implementors,\nprogrammers, and researchers suffer because it has no formal description.\nTo remedy this shortcoming, we present a Haskell program that implements\na Haskell typechecker, thus providing a mathematically rigorous specification\nin a notation that is familiar to Haskell users. We expect this program to fill\na serious gap in current descriptions of Haskell, both as a starting point\nfor discussions about existing features of the type system, and as a platform\nfrom which to explore new proposals.\n\nThis package is derived from the Haskell '98 + Multiparameter Type Classes package of THIH.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          ];
        buildable = true;
        };
      exes = { "thih" = { buildable = true; }; };
      };
    }