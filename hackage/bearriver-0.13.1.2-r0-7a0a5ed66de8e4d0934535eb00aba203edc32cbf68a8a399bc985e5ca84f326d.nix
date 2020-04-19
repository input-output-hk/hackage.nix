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
      specVersion = "1.10";
      identifier = { name = "bearriver"; version = "0.13.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez and Manuel Bärenz";
      homepage = "keera.co.uk";
      url = "";
      synopsis = "FRP Yampa replacement implemented with Monadic Stream Functions.";
      description = "<https://hackage.haskell.org/package/Yampa Yampa> is a popular Functional\nReactive Programming (FRP) implementation that has been used extensively for\nall kinds of applications, including robotics and games.\n\n<https://dl.acm.org/doi/10.1145/2976002.2976010 Monadic Stream Functions> are\na new abstraction for data processors that combine arrows and monads. The\nlibrary <https://hackage.haskell.org/package/dunai dunai> provides a default\nimplementation.\n\nBearriver (a tributary to the Yampa river) provides the same API as Yampa,\nbut implemented using dunai underneath. The goal is to facilitate\nunderstanding what's different about Yampa, and other FRP and Reactive\nProgramming libraries, by creating wrappers around dunai defined precisely by\nthose differences.\n\nBecause dunai is particularly fast, especially with optimizations enabled,\nthis implementation is faster than traditional Yampa for medium-sized and\nlarge applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."dunai" or (buildDepError "dunai"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."simple-affine-space" or (buildDepError "simple-affine-space"))
          ];
        buildable = true;
        };
      };
    }