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
      specVersion = "2.4";
      identifier = { name = "coya"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/coya";
      url = "";
      synopsis = "Coya monoids";
      description = "Take some log semiring R. Then, for any two x,y :: R, the following holds:\n\nx ^ log y == y ^ log x == e ^ (log x * log y)\n\nA Coya monoid is some commutative monoid (R, #), where x # y = x ^ log y.\nThe following laws hold:\n\ne # x = x (Left Identity)\n\nx # e = x (Right Identity)\n\n(x # y) # z == x # (y # z) (Associativity)\n\nx # y == y # x (Commutativity)\n\nIf the R is a poset where all elements in R are greater than one, then R\nalso forms a group:\n\nx # (e ^ (1 / log (x))) == x";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."groups" or (buildDepError "groups"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."refined" or (buildDepError "refined"))
          (hsPkgs."semirings" or (buildDepError "semirings"))
          ];
        };
      };
    }